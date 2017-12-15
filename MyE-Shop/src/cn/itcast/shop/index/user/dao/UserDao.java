package cn.itcast.shop.index.user.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.shop.index.user.vo.User;
import cn.itcast.shop.index.utils.PageHibernateCallback;

/**
 * 用户模块数据持久层代码
 * @author lenovo
 *
 */
public class UserDao extends HibernateDaoSupport{
//按照名称查找是否有该用户
	public User findByUserName(String username){
		String hql = "from User where username=?";
		List<User> list = this.getHibernateTemplate().find(hql,username);
		if(list != null && list.size()>0){
			return list.get(0);
		}
		return null;
	}
	//注册用户存入数据库代码实现
	public void save(User user){
		this.getHibernateTemplate().save(user);
		
	}
	//根据激活码查询用户
		public User findByCode(String code){
			String hql = "from User where code = ?";
			List<User> list  = this.getHibernateTemplate().find(hql,code);
			
			if(list != null && list.size()>0){
				return list.get(0);
			}
			return null;
		}
		
		//修改用户状态
		public void update(User existUser){
			this.getHibernateTemplate().update(existUser);
			
	}
		//用户登录的方法即查询用户的方法
		public User login(User user){
			String hql = "from User where username = ? and password = ? and state = ?";
			List<User> list = this.getHibernateTemplate().find(hql,user.getUsername(),user.getPassword(),1);
			if(list != null && list.size()>0){
				return list.get(0);
			}
			return null;
		   
		}
		public int findCount() {
			String hql = "select count(*) from User";
			List<Long> list = this.getHibernateTemplate().find(hql);
			if (list != null && list.size() > 0) {
				return list.get(0).intValue();
			}
			return 0;
		}

		public List<User> findByPage(int begin, int limit) {
			String hql = "from User";
			List<User> list = this.getHibernateTemplate().execute(
					new PageHibernateCallback<User>(hql, null, begin, limit));
			return list;
		}
		public User findByUid(Integer uid) {
			return this.getHibernateTemplate().get(User.class, uid);
		}
		
	   public void delete(User existUser) {
		this.getHibernateTemplate().delete(existUser);
	}
	
	
}

