package cn.itcast.shop.index.product.adminaction;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

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
		//文件上传需要的参数
		private File upload;
		private String uploadFileName;//接收上传文件名
		private String uploadContextType;//接收上传文件类型
		
		
		
		
		public void setUpload(File upload) {
			this.upload = upload;
		}
		public void setUploadFileName(String uploadFileName) {
			this.uploadFileName = uploadFileName;
		}
		public void setUploadContextType(String uploadContextType) {
			this.uploadContextType = uploadContextType;
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
		//保存商品的方法
		public String save() throws IOException{
			//调用service
			product.setPdate(new Date());
			
			if(upload != null){
				//获得文件上传的绝对路径
			    String realPath = ServletActionContext.getServletContext().getRealPath("/products");
			    //创建文件
			    File diskFile  = new File(realPath+"//"+uploadFileName);
			    //文件上传
			    FileUtils.copyFile(upload,diskFile);
			    product.setImage("products/"+uploadFileName);
			}
			productService.save(product);
			
			return "saveSuccess";
		}
		//删除商品的方法
		public String delete(){
			// 根据id查询商品信息
			product = productService.findByPid(product.getPid());
			// 删除商品的图片:
			String path = ServletActionContext.getServletContext().getRealPath(
					"/" + product.getImage());
			File file = new File(path);
			file.delete();
			// 删除数据库中商品记录:
			productService.delete(product);
			// 页面跳转
			return "deleteSuccess";
}
		//编辑商品
		public String edit(){
			//查询商品
			product = productService.findByPid(product.getPid());
            //查询所有二级分类
		List<CategorySecond> csList = categorySecondService.findAll();
		//将数据保存到页面
		ActionContext.getContext().getValueStack().set("csList", csList);
		return "editSuccess";
		}
		//修改商品的方法
		public String update() throws IOException{
			product.setPdate(new Date());
			//文件上传
			if(upload != null ){
				String path = product.getImage();
				File file = new File(ServletActionContext.getServletContext().getRealPath("/"+path));
				file.delete();
				// 获得上传图片的服务器端路径.
				String realpath = ServletActionContext.getServletContext().getRealPath(
						"/products");
				// 创建文件类型对象:
				File diskFile = new File(path + "//" + uploadFileName);
				// 文件上传:
				FileUtils.copyFile(upload, diskFile);

				product.setImage("products/" + uploadFileName);
			}
            productService.update(product);
            return "updateSuccess";
		}
		
}















