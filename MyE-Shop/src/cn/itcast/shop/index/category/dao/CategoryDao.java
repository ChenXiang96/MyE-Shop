package cn.itcast.shop.index.category.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.shop.index.category.vo.Category;

/**
 * 一级分类的数据持久层
 * @author lenovo
 *
 */
//Dao层查询所有一级分类的方法
public class CategoryDao extends HibernateDaoSupport{
   public List<Category> findAll(){
	   String hql = "from Category";
	   List<Category> list=this.getHibernateTemplate().find(hql);
	   
	   return list;
   }
}
