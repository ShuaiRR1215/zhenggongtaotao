package pers.zgesw.dao;

import java.util.List;

import pers.zgesw.entity.Category;

public interface CategoryDao {
	// 查询所有一级分类
	public List<Category> findAllCategory();
}
