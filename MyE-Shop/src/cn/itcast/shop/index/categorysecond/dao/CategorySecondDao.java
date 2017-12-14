package cn.itcast.shop.index.categorysecond.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.shop.index.categorysecond.service.CategorySecondService;
import cn.itcast.shop.index.categorysecond.vo.CategorySecond;
import cn.itcast.shop.index.utils.PageHibernateCallback;

/**
 * @author lenovo
 *
 */
public class CategorySecondDao extends HibernateDaoSupport{

    /**
     *统计二级分类总的记录数
     * @return
     */
	public int findCount() {
		// TODO Auto-generated method stub
		String hql = "select count(*) from CategorySecond";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list != null && list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}
    /**
     * 二级分类每页显示的集合
     * @param begin
     * @param limit
     * @return
     */
	public List<CategorySecond> findByPage(int begin, int limit) {
		String hql = "from CategorySecond order by csid desc";
		List<CategorySecond> list = this.getHibernateTemplate().execute(
				new PageHibernateCallback<CategorySecond>(hql, null, begin,limit));
	   return list;
		
	}
	// 保存二级分类的方法
  	public void save(CategorySecond categorySecond) {
 	this.getHibernateTemplate().save(categorySecond);
}
  	//删除二级分类的方法
  	public void delete(CategorySecond categorySecond){
  	  this.getHibernateTemplate().delete(categorySecond);
  	}
  	//查询所有二级分类的方法
	public CategorySecond findByCsid(Integer csid) {
		return this.getHibernateTemplate().get(CategorySecond.class, csid);
	}
	//更新的方法
	public void update(CategorySecond categorySecond) {
	    this.getHibernateTemplate().update(categorySecond);
		
	}
	public List<CategorySecond> findAll() {
		String hql = "from CategorySecond";
		return this.getHibernateTemplate().find(hql);
	}
	
}
