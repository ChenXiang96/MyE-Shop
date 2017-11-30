package cn.itcast.shop.index.product.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.itcast.shop.index.product.dao.ProductDao;
import cn.itcast.shop.index.product.vo.Product;

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
}
