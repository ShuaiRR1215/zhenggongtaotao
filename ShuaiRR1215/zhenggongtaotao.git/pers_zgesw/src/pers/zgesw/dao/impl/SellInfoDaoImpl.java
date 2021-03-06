package pers.zgesw.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import pers.zgesw.dao.SellInfoDao;
import pers.zgesw.entity.SellInfo;
import pers.zgesw.utils.PageHibernateCallback;

/**
 * @author shuai
 * @E_mail 1225803134@qq.com
 * @date 2017年7月17日
 * @description 接口实现类，实现对数据库的crud操作
 */
@Repository("sellInfoDao")
public class SellInfoDaoImpl extends HibernateDaoSupport implements SellInfoDao {

	/**
	 * 带分页查询所有sellinfo
	 */
	@Override
	public List<SellInfo> findAllWithPage(int begin, int limit) {

		String hql = "from SellInfo order by pubDate desc";
		List<SellInfo> list = this.getHibernateTemplate()
				.execute(new PageHibernateCallback<SellInfo>(hql, null, begin, limit));

		if (list != null && list.size() > 0)
			return list;
		return null;
	}

	/**
	 * 查询出所有的数据数量
	 */
	@Override
	public int findAllSellInfoCounts() {

		String hql = "select count(*) from SellInfo";
		List<Long> list = (List<Long>) this.getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0)
			return list.get(0).intValue();
		return 0;
	}

	/**
	 * 根据sid查询sellinfo
	 */
	@Override
	public SellInfo findSellInfoBySid(Integer sid) {
		return this.getHibernateTemplate().get(SellInfo.class, sid);
	}

	/**
	 * 根据cid查询出该分类下所有的信息
	 */
	@Override
	public int findSellInfoCountsByCid(Integer cid) {
		String hql = "select count(*) from SellInfo s where s.categorySecond.category.cid = ?";
		List<Long> list = (List<Long>) this.getHibernateTemplate().find(hql, cid);
		if (list != null && !list.isEmpty()) {
			return list.get(0).intValue();
		}
		return 0;
	}

	/**
	 * 根据cid查询该分类的商品信息集合
	 */
	@Override
	@SuppressWarnings("unchecked")
	public List<SellInfo> findSellInfosByCid(int cid, int begin, int limit) {
		String hql = "from SellInfo s where s.categorySecond.category.cid = ?";
		List<SellInfo> list = this.getHibernateTemplate()
				.execute(new PageHibernateCallback<SellInfo>(hql, new Object[] { cid }, begin, limit));

		if (list != null) {
			return list;
		}
		return null;
	}

	@Override
	public int findSellInfoCountsByCsid(Integer csid) {
		String hql = "select count(*) from SellInfo s where s.categorySecond.csid = ?";
		List<Long> list = (List<Long>) this.getHibernateTemplate().find(hql, csid);
		if (list != null && !list.isEmpty()) {
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public List<SellInfo> findSellInfosByCsid(Integer csid, int begin, int limit) {
		String hql = "from SellInfo s where s.categorySecond.csid = ?";
		List<SellInfo> list = this.getHibernateTemplate()
				.execute(new PageHibernateCallback<SellInfo>(hql, new Object[] { csid }, begin, limit));

		if (list != null) {
			return list;
		}
		return null;
	}
	
	@Override
	public void deleteBySid(SellInfo sellInfo) {
		this.getHibernateTemplate().delete(sellInfo);
	}
}
