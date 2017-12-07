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
    //注入OrderService
	private OrderService orderService;
	
	
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
    //生成订单的方法：
	public String save(){
		
		return "saveSuccess";
	}

	public Order getModel() {
		return order;
	}
	

	
}
