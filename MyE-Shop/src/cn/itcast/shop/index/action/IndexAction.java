package cn.itcast.shop.index.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.itcast.shop.index.category.service.CategoryService;
import cn.itcast.shop.index.category.vo.Category;
import cn.itcast.shop.index.product.service.ProductService;

import cn.itcast.shop.index.product.vo.Product;

/**
 * 首页访问的Action
 * @author lenovo
 *
 */
public class IndexAction extends ActionSupport{
	 //注入一级分类的service
		private CategoryService categoryService;
		//注入商品的service
		private ProductService productService;
		
		
		public void setProductService(ProductService productService) {
			this.productService = productService;
		}


		public void setCategoryService(CategoryService categoryService) {
			this.categoryService = categoryService;
		}



	
	/**
	 * 执行的访问首页的方法
	 */
	public String execute(){
		//查询所有一级分类
	    List<Category> cList =  categoryService.findAll();
	    //将一级分类存入到session范围
	    ActionContext.getContext().getSession().put("cList", cList);
	    //查询热门商品
	    List<Product> hList =productService.findHot();
	    //将hList保存到值栈中
	    ActionContext.getContext().getValueStack().set("hList", hList);
		return "index";
	}
}
