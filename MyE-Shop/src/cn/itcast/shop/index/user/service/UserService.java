package cn.itcast.shop.index.user.service;

import org.springframework.transaction.annotation.Transactional;

import cn.itcast.shop.index.user.dao.UserDao;
import cn.itcast.shop.index.user.vo.User;
import cn.itcast.shop.index.utils.MailUtils;
import cn.itcast.shop.index.utils.UUIDutils;

/**
 * 用户模块业务逻辑层代码
 * @author lenovo
 *
 */
@Transactional
public class UserService {
    //注入UserDao
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	//按照用户名查找用户的方法
	public User findByUsername(String username){
		return userDao.findByUserName(username);
				
	}
	//业务层完成用户注册，将user插入到数据库中的方法
		public void save(User user){
			//将数据存入到数据库
			user.setState(0);//0代表用户没有被激活,1代表被激活
		    String code = UUIDutils.getUUID()+UUIDutils.getUUID();
		    user.setCode(code);
		    userDao.save(user);
		    //发送激活邮件
		    MailUtils.sendMail(user.getEmail(), code);
		}

		//业务层根据激活码查询用户
		public User findByCode(String code){
			return userDao.findByCode(code);
			
		}
		public void update(User existUser){
		//修改用户状态
			userDao.update(existUser);
			
			
		}
		//用户登录
		public User login(User user){
			return userDao.login(user);
		}
		
		
			
		
		
}






