package cn.itcast.shop.index.adminuser.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.itcast.shop.index.adminuser.service.AdminUserService;
import cn.itcast.shop.index.adminuser.vo.AdminUser;

/**
 * 后台登录action
 * @author lenovo
 *
 */
public class AdminUserAction extends ActionSupport implements
ModelDriven<AdminUser> {
// 模型驱动使用的对象
private AdminUser adminUser = new AdminUser();

public AdminUser getModel() {
return adminUser;
}



// 注入AdminUserService
private AdminUserService adminUserService;

public void setAdminUserService(AdminUserService adminUserService) {
this.adminUserService = adminUserService;
}


public String login() {

AdminUser existAdminUser = adminUserService.login(adminUser);
// 判断
if (existAdminUser == null) {

     this.addActionError("用户名或密码错误！");
	
	 
//System.out.println("你错了");
	
	return "loginFail";
} else {
	// 登录成功:
	ServletActionContext.getRequest().getSession()
			.setAttribute("existAdminUser", existAdminUser);
	return "loginSuccess";
}
}

}
