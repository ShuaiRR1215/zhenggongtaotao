package pers.zgesw.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pers.zgesw.dao.UserDao;
import pers.zgesw.entity.User;

/**
 * @author Administrator
 * @E_Mail 1225803134@qq.com
 * @date 2017年7月12日 下午9:10:28
 * @description UserService层
 */

@Transactional
@Service("userService")
public class UserService {

	// 注入userDao
	@Autowired
	@Qualifier("userDao")
	private UserDao userDao;

	/**
	 * 持久化用户
	 * 
	 * @param user
	 */
	public void addUser(User user) {
		userDao.addUser(user);
	}

	/**
	 * 查询用户名是否可用
	 * 
	 * @param name
	 * @return
	 */
	public Integer findUsername(String name) {
		return userDao.findUsername(name);
	}

	/**
	 * service查询用户
	 * 
	 * @param username
	 * @return
	 */
	public User findUserByUsername(String username) {
		return userDao.findUserByUsername(username);
	}

	/**
	 * services更新用户信息
	 * 
	 * @param user
	 */
	public void updateUser(User user) {
		userDao.updateUser(user);
	}

}
