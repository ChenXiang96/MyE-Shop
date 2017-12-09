package cn.itcast.shop.index.order.service;

import org.springframework.transaction.annotation.Transactional;

import cn.itcast.shop.index.order.dao.OrderDao;
import cn.itcast.shop.index.order.vo.Order;

/**
 * 订单模块业务层
 * @author lenovo
 *
 */
@Transactional
public class OrderService {
//注入Dao
	private OrderDao orderDao;

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}
//保存订单的业务层
	public void save(Order order) {
		orderDao.save(order);
	}
	
}
