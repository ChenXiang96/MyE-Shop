package cn.itcast.shop.index.order.dao;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.shop.index.order.vo.Order;

/**
 * 订单模块数据持久层 
 * @author lenovo
 *
 */
public class OrderDao extends HibernateDaoSupport {
	//保存订单的数据持久层方法
    public void save(Order order){
    	this.getHibernateTemplate().save(order);
    }
}
