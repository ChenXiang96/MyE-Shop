package cn.itcast.shop.index.order.service;

import cn.itcast.shop.index.order.dao.OrderDao;

/**
 * 订单模块业务层
 * @author lenovo
 *
 */
public class OrderService {
//注入Dao
	private OrderDao orderDao;

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}
	
}
