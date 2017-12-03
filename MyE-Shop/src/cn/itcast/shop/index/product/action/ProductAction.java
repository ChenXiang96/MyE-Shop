package cn.itcast.shop.index.product.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.itcast.shop.index.category.service.CategoryService;
import cn.itcast.shop.index.product.service.ProductService;
import cn.itcast.shop.index.product.vo.Product;

/**
 * 商品的action对象
 * @author lenovo
 *
 */
public class ProductAction extends ActionSupport implements ModelDriven<Product> {
    //用于接收数据的模型驱动
	//模型驱动使用的对象
	private Product product = new Product();
	//注入商品ProductService
	private ProductService productService;
	//接收分类的cid
	private Integer cid;
    //注入一级分类的service
    private CategoryService categoryService;
	
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	public Product getModel(){
		return product;
		
	}
	//根据商品id查询商品方法
	public  String findByPid(){
	    
        //调用service中的方法完成商品查询
		 product = productService.findByPid(product.getPid());
		
		return "findByPid";

	}
	 //根据分类的cid查询商品
		public String findByCid(){
			//查询所有一级分类
			//List<Category> cList = categoryService.findAll();
			
			
			return "findByCid";
			
		}
		
		

}
