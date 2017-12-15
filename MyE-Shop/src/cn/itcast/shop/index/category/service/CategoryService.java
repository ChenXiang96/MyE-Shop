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
	
	
	public List<Category> findAll(){
		
		return categoryDao.findAll();
		
	}

	public void save(Category category){
		categoryDao.save(category);
	}


	public Category findByCid(Integer cid) {
		return categoryDao.findByCid(cid);
	}

		public void delete(Category category) {
			categoryDao.delete(category);
		}

   public void update(Category category){
	   categoryDao.update(category);
}
}
