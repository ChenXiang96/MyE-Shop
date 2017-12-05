package cn.itcast.shop.index.product.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.itcast.shop.index.product.dao.ProductDao;
import cn.itcast.shop.index.product.vo.Product;
import cn.itcast.shop.index.utils.PageBean;

/**
 * Product业务逻辑层
 * @author lenovo
 *
 */
@Transactional
public class ProductService {
  //注入Dao
	private ProductDao productDao;
    
	
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}


	//查询首页上显示的热门商品
	public List<Product> findHot(){
		return productDao.findHot();
		
	}
	//根据商品pid完成查询商品
		public Product findByPid(Integer pid){

			return productDao.findByPid(pid); 

		}
		//根据一级分类的cid带有分页的查询的方法
		public PageBean<Product> findByPageCid(Integer cid,int page){
	        PageBean<Product> pageBean = new PageBean<Product>();
	        //设置当前页数
	        pageBean.setPage(page);
	        //设置每页显示的记录数
	        int limit = 9;
	        pageBean.setLimit(limit);
	        //设置总的记录数
	        int totalCount = 0;
	        totalCount  = productDao.findCountCid(cid);
	        pageBean.setTotalCount(totalCount);
	        //设置总的页数
	        int totalPage = 0;
	        //也可以用Math.ceil(totalCount / limit);
	        if(totalCount%limit == 0){
	        	totalPage = totalCount / limit;
	        	
	        }else{
	        	totalPage = totalCount / limit + 1;
	        }
	        pageBean.setTotalPage(totalPage);
	        //每页显示的数据集合
	        //需要传递从哪里开始
	        int begin = (page - 1)*limit;
	        
	        //每页查询多少条,limit
	        List<Product> list = productDao.findByPageCid(cid,begin,limit);
	        pageBean.setList(list);
			return pageBean;
}
}
