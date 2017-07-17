package pers.zgesw.dao;

import java.util.List;

import pers.zgesw.entity.Category;
import pers.zgesw.entity.SellInfo;

public interface CategoryDao {
	// 查询所有一级分类
	public List<Category> findAllCategory();

	// 查询最新信息
	public List<SellInfo> findNewestInfo();
}
