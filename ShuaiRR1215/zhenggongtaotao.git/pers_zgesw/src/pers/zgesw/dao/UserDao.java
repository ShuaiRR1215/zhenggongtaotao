package pers.zgesw.dao;

import pers.zgesw.entity.User;

/**
 * @author Administrator
 * @E_Mail 1225803134@qq.com
 * @date 2017年7月13日 上午9:07:55
 * @description Dao层控制User对数据库的操作
 */
public interface UserDao {

	// 向数据库中写入一个user
	public void addUser(User user);
	//查询用户名是否可用接口
	public Integer findUsername(String name);
	//根据用户名查询用户
	public User findUserByUsername(String username);
	//更新用户信息
	public void updateUser(User user);

}
