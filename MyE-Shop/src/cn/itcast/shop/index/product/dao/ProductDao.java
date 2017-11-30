package cn.itcast.shop.index.product.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.shop.index.product.vo.Product;

/**
 * Product数据持久层
 * @author lenovo
 *
 */
public class ProductDao extends HibernateDaoSupport {
//查询热门商品
	public List<Product> findHot(){
		//使用离线条件查询
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		//查询热门商品，条件是is_hot = 1
		criteria.add(Restrictions.eq("is_hot", 1));
		//倒序排序输出
		criteria.addOrder(Order.desc("pdate"));
		//执行查询
		List<Product> list = this.getHibernateTemplate().findByCriteria(criteria, 0,9);
		return list;
	}
//根据商品pid查询商品
		public Product findByPid(Integer pid){
			return this.getHibernateTemplate().get(Product.class,pid);
			
		}
	
}
