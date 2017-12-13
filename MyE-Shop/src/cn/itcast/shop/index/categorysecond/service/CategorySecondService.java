package cn.itcast.shop.index.categorysecond.service;

import java.util.List;

import cn.itcast.shop.index.categorysecond.dao.CategorySecondDao;
import cn.itcast.shop.index.categorysecond.vo.CategorySecond;
import cn.itcast.shop.index.utils.PageBean;

/**
 * 
 * @author lenovo
 *
 */
public class CategorySecondService {
	//注入dao
	private CategorySecondDao categorySecondDao;

	public void setCategorySecondDao(CategorySecondDao categorySecondDao) {
		this.categorySecondDao = categorySecondDao;
	}

	public PageBean<CategorySecond> findByPage(Integer page) {
		// TODO Auto-generated method stub
        PageBean<CategorySecond> pageBean = new PageBean<CategorySecond>();
        //设置当前页数
        pageBean.setPage(page);
        //设置每页显示的记录数
        int limit = 10;
        pageBean.setLimit(limit);
        //设置总的记录数
        int totalCount = categorySecondDao.findCount();
        pageBean.setTotalCount(totalCount);
        //设置总的页数
        int totalPage = 0;
        if(totalCount % limit == 0){
        	totalPage = totalCount/limit;
        	
        }else{
        	totalPage = totalCount/limit + 1;
        }
        pageBean.setTotalPage(totalPage);
        //设置每页显示的数据集合
        int begin = (page - 1)*limit;
        List<CategorySecond> list = categorySecondDao.findByPage(begin,limit);
        pageBean.setList(list);
		return pageBean;
	}
	
	

}
