package cn.itcast.shop.index.order.action;

import java.io.IOException;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import cn.itcast.shop.index.cart.vo.Cart;
import cn.itcast.shop.index.cart.vo.CartItem;
import cn.itcast.shop.index.order.service.OrderService;
import cn.itcast.shop.index.order.vo.Order;
import cn.itcast.shop.index.order.vo.OrderItem;
import cn.itcast.shop.index.user.vo.User;
import cn.itcast.shop.index.utils.PageBean;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 订单Action类
 * 
 * 
 * 
 */
public class OrderAction extends ActionSupport implements ModelDriven<Order> {
	// 模型驱动使用的对象
		private Order order = new Order();

		public Order getModel() {
			return order;
		}
		
	    //注入OrderService
		private OrderService orderService;
		
		public void setOrderService(OrderService orderService) {
			this.orderService = orderService;
		}
	    //生成订单的方法： 
		public String save(){
			//1.保存数据到数据库
			//订单数据补全
			
			order.setOrdertime(new Date());
			order.setState(1);
			//总计的数据是购物车中信息
			Cart cart = (Cart)ServletActionContext.getRequest().getSession()
					    .getAttribute("cart");
			if(cart == null){
				this.addActionError("购物车为空！");
				return "msg";
			}
			order.setTotal(cart.getTotal());
			//设置订单中的订单项
			for(CartItem cartItem : cart.getCartItems()){
				OrderItem orderItem = new OrderItem();
				orderItem.setCount(cartItem.getCount());
			    orderItem.setSubtotal(cartItem.getSubtotal());
			    orderItem.setProduct(cartItem.getProduct());
			    orderItem.setOrder(order);
	             
			    order.getOrderItems().add(orderItem);
			    
			}
			//订单所属的用户
			User existuser = (User)ServletActionContext.getRequest().getSession()
				    .getAttribute("existuser");
//			if(existUser == null){
//				this.addActionError("您还没登录");
//				return "login";
//			}
//			order.setUser(existUser);
			if(existuser != null){
				order.setUser(existuser);
			}else{
				this.addActionError("您还没登录");
	        	return "login";
			}
			

			orderService.save(order);
			//2.将订单对象显示到页面上，通过值栈的形式将数据库中的数据显示到页面上
			//order就是模式驱动的对象可以在页面上直接显示
			
			return "saveSuccess";
		}

		
	

	
}
