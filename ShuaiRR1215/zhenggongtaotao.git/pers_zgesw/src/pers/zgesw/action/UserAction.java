package pers.zgesw.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import pers.zgesw.entity.User;
import pers.zgesw.service.UserService;
import pers.zgesw.utils.EncryptionUtils;
import pers.zgesw.utils.MailUtils;
import pers.zgesw.utils.UUIDUtils;

/**
 * @author Administrator
 * @E_Mail 1225803134@qq.com
 * @date 2017年7月12日 下午8:42:37
 * @description 用于对用户的操作进行控制
 */

@Controller
@Scope("prototype")
public class UserAction extends ActionSupport implements ModelDriven<User> {
	// 模型驱动使用的类
	private User user = new User();

	@Override
	public User getModel() {
		return user;
	}

	// 注入验证码
	private String checkCode;

	public void setCheckCode(String checkCode) {
		this.checkCode = checkCode;
	}

	@Autowired
	@Qualifier("userService")
	private UserService userService;

	/**
	 * 对登陆进行控制
	 * 
	 * @return
	 */
	public String doLogin() {

		if (!isTrue()) {
			user.setCode("验证码错误");
			ActionContext.getContext().getValueStack().set("user", user);
			return "loginCodeError";
		}
		if (user != null) {
			String currPassword = user.getPassword();
			user = userService.findUserByUsername(user.getUsername());
			if (user != null) {
				String realPassword = user.getPassword();
				String salt = user.getSalt();
				if (realPassword.equals(EncryptionUtils.encode(currPassword, salt))) {
					if (user.getState() == 0) {
						user.setIdCard("您尚未激活，请去邮箱激活");
						ActionContext.getContext().getValueStack().set("user", user);
						return "stateError";
					}
					ServletActionContext.getRequest().getSession().setAttribute("existUser", user);
					return "loginSuccess";
				}
				user.setIdCard("账号或密码错误");
				ActionContext.getContext().getValueStack().set("user", user);
				return "loginFailed";
			}
		}

		ActionContext.getContext().getValueStack().set("user", user);

		return "loginFailed";
	}

	/**
	 * 对注册进行控制
	 * 
	 * @return
	 */
	public String doRegister() {
		User currUser = user;
		if (!isTrue()) {
			// this.addActionMessage("验证码错误");
			currUser.setCode("验证码错误");
			ActionContext.getContext().getValueStack().set("user", currUser);
			return "registerCodeError";
		} else if (user.getSafequestion().equals("0")) {
			this.addFieldError("safequestion", "请选择一个安全问题，便于找回密码");
			ActionContext.getContext().getValueStack().set("user", currUser);
		} else if (user != null) {
			// 对密码进行加密处理
			String salt = EncryptionUtils.getSalt();
			String newpassowrd = EncryptionUtils.encode(user.getPassword(), salt);
			// 补全当前注册用户信息
			user.setSalt(salt);
			user.setPassword(newpassowrd);
			user.setRegDate(new Date());
			user.setCode(UUIDUtils.getUUID());
			MailUtils.sendMail(user.getEmail(), user.getCode());
			user.setSex(0);// 0表示保密 1表示女性 2表示男性
			user.setState(0);// 0表示已注册未激活 1表示已激活
			user.setVerified(0);// 0表示未实名认证 1表示已实名认证

			userService.addUser(user);
			return "registerSuccess";
		}
		return "registerFailed";
	}

	/**
	 * 根据表单输入的数据与数据库进行校验
	 * 
	 * @return
	 */
	public String foundPassword() {
		if (!isTrue()) {
			user.setCode("验证码错误");
			ActionContext.getContext().getValueStack().set("user", user);
			return "fCodeError";
		}
		// 将用户输入的信息先暂时保存下来，用于比较信息
		String currname = user.getUsername();
		String currsafequestion = user.getSafequestion();
		String currsafeanswer = user.getSafeanswer();
		String currpassword = user.getPassword();
		user = userService.findUserByUsername(currname);
		if (currname.equals(user.getUsername()) && currsafequestion.equals(user.getSafequestion())
				&& currsafeanswer.equals(user.getSafeanswer())) {
			// 证明信息完整 将新密码经过计算存入数据库中
			user.setPassword(currpassword);
			userService.updateUser(user);
			return "foundSuccess";
		}
		ActionContext.getContext().getValueStack().set("user", user);
		return "foundError";
	}

	/**
	 * 对退出进行控制 检查session中是否存在一个user的属性
	 * 
	 * @return
	 */
	public String doQuit() {

		User existUser = (User) ServletActionContext.getRequest().getSession().getAttribute("existUser");
		if (existUser != null) {
			ServletActionContext.getRequest().getSession().removeAttribute("existUser");
		}

		return NONE;
	}

	/**
	 * 异步验证用户名是否存在，并给出提示
	 * 
	 * @return
	 * @throws IOException
	 */

	/**
	 * 判断验证码是否正确
	 * 
	 * @return
	 */
	private boolean isTrue() {
		if (checkCode != null) {
			String sessionCode = (String) ServletActionContext.getRequest().getSession().getAttribute("sessionCode");
			if (sessionCode.equalsIgnoreCase(checkCode)) {
				return true;
			}
		}
		return false;
	}

	public String checkName() throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		PrintWriter pw = response.getWriter();

		String name = user.getUsername();
		String msg = "";
		Integer count = userService.findUsername(name);
		if (count == 0) {
			msg = "用户名可用";
		} else {
			msg = "用户名已存在";
		}

		pw.write(msg);
		pw.flush();
		pw.close();

		return NONE;
	}

}
