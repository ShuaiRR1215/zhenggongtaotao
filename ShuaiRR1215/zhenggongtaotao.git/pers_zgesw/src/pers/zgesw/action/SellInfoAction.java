package pers.zgesw.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import pers.zgesw.entity.SellInfo;
import pers.zgesw.service.SellInfoService;
import pers.zgesw.utils.PageBean;

/**
 * @author shuai
 * @E_mail 1225803134@qq.com
 * @date 2017年7月17日
 * @description
 */
@Controller
public class SellInfoAction extends ActionSupport implements ModelDriven<SellInfo> {
	// 封装sellinfo信息
	private SellInfo sellInfo = new SellInfo();

	@Override
	public SellInfo getModel() {
		return sellInfo;
	}

	// 接收一级分类id
	private Integer cid;

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	// 接收二级分类id
	private Integer csid;

	public void setCsid(Integer csid) {
		this.csid = csid;
	}

	// 接收页面数据
	private Integer page;

	public void setPage(Integer page) {
		this.page = page;
	}

	@Autowired
	@Qualifier("sellInfoService")
	private SellInfoService sellInfoService;

	////////////////////////////////////////////

	/**
	 * 查询出带分页的数据
	 * 
	 * @return
	 */
	public String findAllWithPage() {

		PageBean<SellInfo> pageBean = sellInfoService.findAllWithPage(page);
		if (pageBean != null) {
			ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		}

		return "findAll";
	}

	public String findSellInfoBySid() {

		sellInfo = sellInfoService.findSellInfoBySid(sellInfo.getSid());
		if (sellInfo != null)
			ActionContext.getContext().getValueStack().set("sellInfo", sellInfo);

		return "findSellInfoBySid";
	}

	/**
	 * 根据一级分类id查询出该分类下的所有商品，并且分页显示
	 * 
	 * @return
	 */
	public String findSellListByCid() {

		PageBean<SellInfo> pageBean = sellInfoService.findSellListByCid(cid, page);
		if (pageBean != null) {
			ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		}

		return "findSellListByCid";
	}

	/**
	 * 根据二级分类id查询售卖信息
	 * 
	 * @return
	 */
	public String findSellListByCsid() {
		// 根据二级分类id查询出该分类下的所有商品，并且分页显示
		PageBean<SellInfo> pageBean = sellInfoService.findSellListByCsid(csid, page);
		if (pageBean != null) {
			ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		}
		return "findSellListByCsid";
	}

}
