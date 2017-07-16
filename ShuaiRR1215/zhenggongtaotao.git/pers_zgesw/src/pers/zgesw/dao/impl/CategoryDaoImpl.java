package pers.zgesw.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import pers.zgesw.dao.CategoryDao;
import pers.zgesw.entity.Category;

@Repository("categoryDao")
public class CategoryDaoImpl extends HibernateDaoSupport implements CategoryDao {

	/**
	 * 从数据库中查询所有一级分类数据
	 */
	@Override
	public List<Category> findAllCategory() {
		return this.getHibernateTemplate().loadAll(Category.class);
	}

}
