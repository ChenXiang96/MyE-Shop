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
	
}
