package cn.itcast.shop.index.category.adminaction;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.itcast.shop.index.category.service.CategoryService;
import cn.itcast.shop.index.category.vo.Category;

/**
 * 后台一级分类管理的Action
 * @author lenovo
 *
 */
public class AdminCategoryAction extends ActionSupport implements ModelDriven<Category>{
//模型驱动使用的对象
	private Category category = new Category();
	public Category getModel() {
		return category;
	}
	//注入一级分类的service
	private CategoryService categoryService;
	
	
    public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}


	public String findAll(){

		List<Category> cList = categoryService.findAll();

		ActionContext.getContext().getValueStack().set("cList", cList);
		return "findAll";
	}
	//后台保存一级分类
	public String save(){
		categoryService.save(category);
		return "saveSuccess";
	}

			public String delete(){
				
				category = categoryService.findByCid(category.getCid());
				categoryService.delete(category);
				// 进行页面转向:
				return "deleteSuccess";
			}
	
	 public String edit(){
		category =  categoryService.findByCid(category.getCid());
		
		return "editSuccess";
		
	 }
	//更新
	 public String update(){
		 categoryService.update(category);
		 return "updateSuccess";
	 }
			
			
			
			
			
			
			
}
