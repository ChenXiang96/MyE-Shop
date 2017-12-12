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
// 保存一级分类的方法
	public void save(Category category) {
		this.getHibernateTemplate().save(category);
	}
	// Dao中根据一级分类id查询一级分类
	public Category findByCid(Integer cid) {
		return this.getHibernateTemplate().get(Category.class, cid);
	}
// DAO中删除一级分类
	public void delete(Category category) {
		this.getHibernateTemplate().delete(category);
	}
}
