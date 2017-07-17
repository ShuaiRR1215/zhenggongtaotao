package pers.zgesw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pers.zgesw.dao.CategoryDao;
import pers.zgesw.entity.Category;
import pers.zgesw.entity.SellInfo;

@Transactional
@Service("categoryService")
public class CategoryService {

	// 注入一级分类dao
	@Autowired
	@Qualifier("categoryDao")
	private CategoryDao categoryDao;

	/**
	 * 查询所有的一级分类
	 * 
	 * @return
	 */
	public List<Category> findAllCategory() {
		return categoryDao.findAllCategory();
	}

	public List<SellInfo> findNewestInfo() {
		return categoryDao.findNewestInfo();
	}

}
