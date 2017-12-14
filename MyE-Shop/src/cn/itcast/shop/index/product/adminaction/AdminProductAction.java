package cn.itcast.shop.index.product.adminaction;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.itcast.shop.index.categorysecond.service.CategorySecondService;
import cn.itcast.shop.index.categorysecond.vo.CategorySecond;
import cn.itcast.shop.index.product.service.ProductService;
import cn.itcast.shop.index.product.vo.Product;
import cn.itcast.shop.index.utils.PageBean;

public class AdminProductAction extends ActionSupport implements ModelDriven<Product>{
	// 模型驱动使用的对象
		private Product product = new Product();

		public Product getModel() {
			return product;
		}
    //注入商品的service
		private ProductService productService;
		

		public void setProductService(ProductService productService) {
			this.productService = productService;
		}
   //注入二级分类的service
		private CategorySecondService categorySecondService;
		
		public void setCategorySecondService(CategorySecondService categorySecondService) {
			this.categorySecondService = categorySecondService;
		}
		// 接收page参数
		private Integer page;

		public void setPage(Integer page) {
			this.page = page;
		}
		public String findAll(){
			//调用service分页查询
			PageBean<Product> pageBean = productService.findByPage(page);
			//将数据传递到页面上
			ActionContext.getContext().getValueStack().set("pageBean", pageBean);
			return "findAll";
		}
		//添加页面
		public String addPage(){
			//查询所有二级分类集合
		List<CategorySecond> csList = categorySecondService.findAll();
		//值栈保存
		ActionContext.getContext().getValueStack().set("csList",csList);
			//页面跳转
			return "addPageSuccess";
		}
}
















