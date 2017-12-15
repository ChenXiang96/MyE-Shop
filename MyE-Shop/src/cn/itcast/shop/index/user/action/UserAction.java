package cn.itcast.shop.index.user.action;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.itcast.shop.index.user.service.UserService;
import cn.itcast.shop.index.user.vo.User;

/**
 * 用户模块的Action的类
 * @author lenovo
 *
 */
public class UserAction extends ActionSupport implements ModelDriven<User>{
    //模型驱动使用的对象
	private User user = new User();
	@Override
	public User getModel() {
		
		return user;
	}
	//接收验证码
		private String checkcode;
		
		
		public void setCheckcode(String checkcode) {
			this.checkcode = checkcode;
		}
	//注入UserService
	private UserService userService;
   

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	/**
	 * 跳转到注册页面的执行方法
	 */
	public String registPage(){
		return "registPage";
	}
	/**
	 * AJAX进行异步校验用户名的执行方法
	 * @throws IOException 
	 */
	public String findByName() throws IOException{
		//调用service进行查询
     User existUser = userService.findByUsername(user.getUsername());
     //获得response对象向页面输出:
     HttpServletResponse response = ServletActionContext.getResponse();
     response.setContentType("text/html;charset=UTF-8");
     //判断
     if(existUser != null){
    	 //查询到该用户：用户名已存在
    	 response.getWriter().println("<font color='red'>用户名已存在!</font>");
     }else{
    	 //没查询到该用户，用户名可以使用
    	 response.getWriter().println("<font color='green'>用户名可以使用!</font>");
     }
     return NONE;
	}
	/**
	 * 用户注册的方法：
	 * 完成用户数据插入数据库操作
	 * 调用service
	 */
     public String regist(){
    	 //判断验证码
    	 //从session中获得随机的验证码值
    	 String  checkcode1 = (String)ServletActionContext.getRequest().getSession().getAttribute("checkcode");
         //判断提交过来的验证码是否能匹配上
    	 if(!checkcode.equalsIgnoreCase(checkcode1)){
    		 this.addActionError("验证码输入错误!");
    		 return "checkcodeFail";
    	 }
    	 
    	 userService.save(user);
    	 this.addActionMessage("恭喜您注册成功!请去邮箱激活");
    	 return "yes";
     }
     
     /**
      * 用户激活的方法
      */
     public String active(){
    	 //根据激活码查询用户
    	 User existUser = userService.findByCode(user.getCode());
    	 //判断
    	 if(existUser == null){
    		 //激活码错误
    		 return "ono";
    	}else{
    		 //成功激活
    	     //修改用户状态
    		existUser.setState(1);
    		existUser.setCode(null);
    		userService.update(existUser);
    		return "wayes";
    		
    	}
   
     }
     /**
      * 跳转到登录页面的方法
      */
     public String loginPage(){
  		return "loginPage";
  	}
     
     /**
      * 登陆的方法
      */
     public String login(){
    	 User existuser = userService.login(user);
    	 //判断
    	 if(existuser == null){
    		 //登录失败
    		 this.addActionError("登录失败:用户名密码错误或用户未激活!");
    		 return LOGIN;
    	 }else{
    		 //登陆成功
    		 //将用户信息存入Session中
    		 ServletActionContext.getRequest().getSession().setAttribute("existuser", existuser);
    		 
    		 //跳转页面
    		 return "loginSuccess";
    		 
    		 
    	 }
    
     }
     /**
      * 用户退出的方法
      */
     public String quit(){
    	 //销毁session
    	ServletActionContext.getRequest().getSession().invalidate();

    	 //页面跳转到首页
    	return "quit";
     }
     //跳转到显示用户信息的页面
     public String edit(){
    	user = userService.findByUid(user.getUid());
	     return "editOK";

     }
     //修改自己信息
     public String update(){
        
    	 userService.update(user);
	     return "updateOK";
     }
     public String blog(){
    	 return "blog";
     }
     public String about(){
    	 return "about";
     }
     public String contact(){
    	 return "contact";
     }
     

}









