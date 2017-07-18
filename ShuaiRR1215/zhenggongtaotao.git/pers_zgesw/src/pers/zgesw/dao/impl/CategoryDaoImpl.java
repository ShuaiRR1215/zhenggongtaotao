package pers.zgesw.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import pers.zgesw.dao.CategoryDao;
import pers.zgesw.entity.Category;
import pers.zgesw.entity.SellInfo;

@Repository("categoryDao")
public class CategoryDaoImpl extends HibernateDaoSupport implements CategoryDao {

	/**
	 * 从数据库中查询所有一级分类数据
	 */
	@Override
	public List<Category> findAllCategory() {
		
		return this.getHibernateTemplate().loadAll(Category.class);
	}

	/**
	 * 查询最新商品实现
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<SellInfo> findNewestInfo() {
		String hql = "from SellInfo order by pubDate desc";
		return (List<SellInfo>) this.getHibernateTemplate().execute(new HibernateCallback<List<SellInfo>>() {

			@Override
			public List<SellInfo> doInHibernate(Session session) throws HibernateException {
				Query query = session.createQuery(hql);
				query.setFirstResult(0);
				query.setMaxResults(10);
				return query.list();
			}
		});
	}
}
