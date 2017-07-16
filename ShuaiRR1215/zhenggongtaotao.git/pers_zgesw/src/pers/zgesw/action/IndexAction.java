package pers.zgesw.action;

import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Administrator
 * @E_Mail 1225803134@qq.com
 * @date 2017年7月12日 下午4:40:49
 * @description 控制首页跳转action
 */

@Controller
public class IndexAction extends ActionSupport {
	@Override
	public String execute() throws Exception {
		System.out.println("Hello Jsp");
		return "index";
	}

	/**
	 * 转向登陆页面
	 * @return
	 */
	public String toLoginPage() {
		return "toLoginPage";
	}

	/**
	 * 转向注册页面
	 * @return
	 */
	public String toRegPage() {
		return "toRegPage";
	}

	/**
	 * 转向找回密码页面
	 * @return
	 */
	public String toForgetPwd() {
		return "toForgetPwd";
	}

}
