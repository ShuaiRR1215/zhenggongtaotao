package pers.zgesw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pers.zgesw.dao.SellInfoDao;
import pers.zgesw.entity.SellInfo;
import pers.zgesw.utils.PageBean;

/**
 * @author shuai
 * @E_mail 1225803134@qq.com
 * @date 2017年7月17日
 * @description
 */
@Transactional
@Service("sellInfoService")
public class SellInfoService {

	// 注入sellInfo dao层
	@Autowired
	@Qualifier("sellInfoDao")
	private SellInfoDao sellInfoDao;

	/**
	 * 设置分页
	 * 
	 * @param page
	 * @return
	 */
	public PageBean<SellInfo> findAllWithPage(Integer page) {
		PageBean<SellInfo> pageBean = new PageBean<SellInfo>();
		pageBean.setPage(page);
		int limit = 10;
		pageBean.setLimit(limit);
		int totalCount = 0;
		totalCount = sellInfoDao.findAllSellInfoCounts();
		pageBean.setTotalCount(totalCount);

		int totalPage = 0;
		if (totalCount % limit == 0)
			totalPage = totalCount / limit;
		else
			totalPage = totalCount / limit + 1;
		pageBean.setTotalPage(totalPage);

		int begin = (page - 1) * limit;

		List<SellInfo> selleInfos = sellInfoDao.findAllWithPage(begin, limit);

		pageBean.setList(selleInfos);

		return pageBean;
	}

	/**
	 * 根据sid查询该sellinfo
	 * 
	 * @param sid
	 * @return
	 */
	public SellInfo findSellInfoBySid(Integer sid) {

		return sellInfoDao.findSellInfoBySid(sid);
	}

	public PageBean<SellInfo> findSellListByCid(Integer cid, Integer page) {

		PageBean<SellInfo> pageBean = new PageBean<SellInfo>();
		pageBean.setPage(page);
		int limit = 10;
		pageBean.setLimit(limit);
		int totalCount = 0;
		totalCount = sellInfoDao.findSellInfoCountsByCid(cid);
		pageBean.setTotalCount(totalCount);

		int totalPage = 0;
		if (totalCount % limit == 0)
			totalPage = totalCount / limit;
		else
			totalPage = totalCount / limit + 1;
		pageBean.setTotalPage(totalPage);

		int begin = (page - 1) * limit;

		List<SellInfo> selleInfos = sellInfoDao.findSellInfosByCid(cid, begin, limit);

		pageBean.setList(selleInfos);

		return pageBean;
	}

	public PageBean<SellInfo> findSellListByCsid(Integer csid, Integer page) {
		PageBean<SellInfo> pageBean = new PageBean<SellInfo>();
		pageBean.setPage(page);
		int limit = 10;
		pageBean.setLimit(limit);
		int totalCount = 0;
		totalCount = sellInfoDao.findSellInfoCountsByCsid(csid);
		pageBean.setTotalCount(totalCount);

		int totalPage = 0;
		if (totalCount % limit == 0)
			totalPage = totalCount / limit;
		else
			totalPage = totalCount / limit + 1;
		pageBean.setTotalPage(totalPage);

		int begin = (page - 1) * limit;

		List<SellInfo> selleInfos = sellInfoDao.findSellInfosByCsid(csid, begin, limit);

		pageBean.setList(selleInfos);
		return pageBean;
	}

}
