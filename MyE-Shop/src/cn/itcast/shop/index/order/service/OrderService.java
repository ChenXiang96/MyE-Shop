package cn.itcast.shop.index.order.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.itcast.shop.index.order.dao.OrderDao;
import cn.itcast.shop.index.order.vo.Order;
import cn.itcast.shop.index.utils.PageBean;

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
	//查询用户业务层订单
		public PageBean<Order> findByPageUid(Integer uid,int page){
			PageBean<Order> pageBean = new PageBean<Order>();
			//设置当前页数
			pageBean.setPage(page);
			//设置每页显示的记录数
			 int limit = 5;
			pageBean.setLimit(limit);
			//设置总的记录数
			int totalCount = 0;
			totalCount = orderDao.findByCountUid(uid);
			pageBean.setTotalCount(totalCount);
			//设置总的页数
			int totalPage = 0;
			if(totalCount % limit == 0){
				totalPage = totalCount/limit;
			}else{
				totalPage = totalCount/limit + 1;
			}
			pageBean.setTotalPage(totalPage);
			//设置每页显示数据集合
			int begin = (page - 1)*limit;
			List<Order> list = orderDao.findByPageUid(uid,begin,limit);
			
			pageBean.setList(list);
			return pageBean;
		}
		//根据订单id查询订单
		public Order findByOid(Integer oid){
			
			
			
			return orderDao.findByOid(oid);
			
			
		}
		//后台查订单
		public PageBean<Order> findAllByPage(Integer page) {
		    PageBean<Order> pageBean = new PageBean<Order>();
		    //当前页数
		    pageBean.setPage(page);
		    //当前显示记录数
		    int limit = 10;
		    pageBean.setLimit(limit);
		    int totalCount = orderDao.findCount();
			pageBean.setTotalCount(totalCount);
			// 设置总页数
			int totalPage = 0;
			if(totalCount % limit == 0){
				totalPage = totalCount / limit;
			}else{
				totalPage = totalCount / limit + 1;
			}
			pageBean.setTotalPage(totalPage);
			// 设置每页显示数据集合
			int begin = (page - 1) * limit;
			List<Order> list = orderDao.findByPage(begin,limit);
			pageBean.setList(list);
			return pageBean;
		    
			
		}
	
}
