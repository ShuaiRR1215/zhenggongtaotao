package pers.zgesw.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import pers.zgesw.entity.Category;
import pers.zgesw.entity.SellInfo;
import pers.zgesw.service.CategoryService;

/**
 * @author Administrator
 * @E_Mail 1225803134@qq.com
 * @date 2017年7月12日 下午4:40:49
 * @description 控制首页跳转action
 */

@Controller
public class IndexAction extends ActionSupport {
	/**
	 * 访问首页做的动作 查询一级分类， 查询二级分类， 查询热门商品 查询公告板内容
	 */

	@Autowired
	@Qualifier("categoryService")
	private CategoryService categoryService;

	@Override
	public String execute() throws Exception {

		// 搜索所有的一级以及二级分类展示在首页上
		List<Category> cList = categoryService.findAllCategory();
		if (cList != null && cList.size() > 0)
			ActionContext.getContext().getValueStack().set("cList", cList);

		// 通过首页查询出最新发布的信息，并展示在首页上
		List<SellInfo> sList = categoryService.findNewestInfo();
		if (sList != null && sList.size() > 0)
			ActionContext.getContext().getValueStack().set("sList", sList);
		return "index";
	}

	/**
	 * 转向登陆页面
	 * 
	 * @return
	 */
	public String toLoginPage() {
		return "toLoginPage";
	}

	/**
	 * 转向注册页面
	 * 
	 * @return
	 */
	public String toRegPage() {
		return "toRegPage";
	}

	/**
	 * 转向找回密码页面
	 * 
	 * @return
	 */
	public String toForgetPwd() {
		return "toForgetPwd";
	}
	
	public String toPublishInfoPage(){
		return "toPublishInfoPage";
	}

}
