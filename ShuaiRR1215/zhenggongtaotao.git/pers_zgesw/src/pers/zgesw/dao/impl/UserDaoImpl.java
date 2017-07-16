package pers.zgesw.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import pers.zgesw.dao.UserDao;
import pers.zgesw.entity.User;

/**
 * @author Administrator
 * @E_Mail 1225803134@qq.com
 * @date 2017年7月13日 上午9:08:32
 * @description UserDao实现类，实现对数据库的操作  采用注解形式
 */
@Repository("userDao")
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	@Override
	public void addUser(User user) {
		//对用户进行判断，再决定是否进行存储
		if (user != null)
			this.getHibernateTemplate().save(user);
	}

	@Override
	public Integer findUsername(String name) {
		String hql = "select count(username) from User where username = ?";
		List<Long> nameList = (List<Long>) this.getHibernateTemplate().find(hql, name);
		if(nameList!=null && nameList.size()>0)
			return nameList.get(0).intValue();
		return 0;
	}
	/**
	 * 根据username查询user
	 */
	@Override
	public User findUserByUsername(String username) {
		String hql = "from User where username = ?";
		if(username!=null){
			List list = this.getHibernateTemplate().find(hql, username);
			if(list!=null && list.size()>0){
				return (User) list.get(0);
			}
		}
		return null;
	}
	
	@Override
	public void updateUser(User user) {
		
		if(user!=null)
			this.getHibernateTemplate().update(user);
		
		
	}

}
