package cn.itcast.shop.index.adminuser.service;

import org.springframework.transaction.annotation.Transactional;

import cn.itcast.shop.index.adminuser.dao.AdminUserDao;
import cn.itcast.shop.index.adminuser.vo.AdminUser;

@Transactional
public class AdminUserService {
	// 注入Dao
	private AdminUserDao adminUserDao;

	public void setAdminUserDao(AdminUserDao adminUserDao) {
		this.adminUserDao = adminUserDao;
	}

	
	public AdminUser login(AdminUser adminUser) {
		return adminUserDao.login(adminUser);
	}
	
}
