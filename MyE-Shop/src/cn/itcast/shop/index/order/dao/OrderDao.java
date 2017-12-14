package cn.itcast.shop.index.order.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.shop.index.order.vo.Order;
import cn.itcast.shop.index.order.vo.OrderItem;
import cn.itcast.shop.index.utils.PageHibernateCallback;

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
    //我的订单总记录数的统计
    public Integer findByCountUid(Integer uid){
    	String hql = "select count(*) from Order o where o.user.uid = ?";
    	List<Long> list = this.getHibernateTemplate().find(hql,uid);
    	if(list != null && list.size()>0){
    		return list.get(0).intValue();
    	}
    	return null;
    }
    //用户订单的查询，每页显示的记录集合
    public List<Order>findByPageUid(Integer uid,Integer begin,Integer limit){
    String hql = "from Order o where o.user.uid = ? order by ordertime desc";
    List<Order> list = this.getHibernateTemplate().execute(new PageHibernateCallback<Order>(hql,new Object[]{uid},begin,limit));
    
    return list;
    	
    }
  //数据持久层通过OID查找订单
    public Order findByOid(Integer oid){
    	return this.getHibernateTemplate().get(Order.class,oid);
    			
    	
    }
    //后台
	public int findCount() {
		// TODO Auto-generated method stub
		String hql = "select Count(*) from Order";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list != null && list.size()>0){
    		return list.get(0).intValue();
    	}
		return 0;
	}
	
	public List<Order> findByPage(int begin, int limit) {
		// TODO Auto-generated method stub
		String hql = "from Order order by ordertime desc";
		List<Order> list = this.getHibernateTemplate().execute(new PageHibernateCallback<Order>(hql,null,begin,limit));
		if(list != null && list.size()>0){
    		return list;
    	}
		
		
		return null;
		
	}
	public List<OrderItem> findOrderItem(Integer oid) {
		String hql = "from OrderItem oi where oi.order.oid = ?";
		List<OrderItem> list = this.getHibernateTemplate().find(hql, oid);
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

}
