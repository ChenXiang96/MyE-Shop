package cn.itcast.shop.index.category.service;

import java.util.List;

import cn.itcast.shop.index.category.dao.CategoryDao;
import cn.itcast.shop.index.category.vo.Category;

/**
 * 一级分类的业务逻辑层
 * @author lenovo
 *
 */
public class CategoryService {
   //注入CategoryDao
	private CategoryDao categoryDao;

	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}
	
	//业务层查询所有一级分类的方法
	public List<Category> findAll(){
		
		return categoryDao.findAll();
		
	}
    //业务层保存一级分类的方法
	public void save(Category category){
		categoryDao.save(category);
	}

	// 业务层根据一级分类id查询一级分类
	public Category findByCid(Integer cid) {
		return categoryDao.findByCid(cid);
	}
	// 业务层删除一级分类
		public void delete(Category category) {
			categoryDao.delete(category);
		}
    //更新一级分类
   public void update(Category category){
	   categoryDao.update(category);
}
}
