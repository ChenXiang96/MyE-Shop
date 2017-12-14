package cn.itcast.shop.index.order.adminaction;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.itcast.shop.index.order.vo.Order;
import cn.itcast.shop.index.utils.PageBean;
import cn.itcast.shop.index.order.vo.OrderItem;
import cn.itcast.shop.index.order.service.OrderService;

public class AdminOrderAction extends ActionSupport implements ModelDriven<Order>{
	// 模型驱动使用的类
		private Order order = new Order();

		public Order getModel() {
			return order;
		}
		// 接收page参数
		private Integer page;
		
		public void setPage(Integer page) {
			this.page = page;
		}
		
		// 注入OrderService
		private OrderService orderService;

		public void setOrderService(OrderService orderService) {
			this.orderService = orderService;
		}
		//分页查询方法
		public String findAll(){
			PageBean<Order> pageBean = orderService.findAllByPage(page);
			// 将数据存入到值栈中保存到页面
			ActionContext.getContext().getValueStack().set("pageBean", pageBean);
			// 页面跳转:
			return "findAll";
		}
      
		public String findOrderItem(){
			// 根据订单id查询订单项:
			List<OrderItem> list = orderService.findOrderItem(order.getOid());
			// 显示到页面:
			ActionContext.getContext().getValueStack().set("list", list);
			// 页面跳转
			return "findOrderItem";
		}

}
