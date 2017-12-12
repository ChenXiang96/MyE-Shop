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


	//后台点击一级分类查询findAll
	public String findAll(){
		//查询所有一级分类，通过service
		List<Category> cList = categoryService.findAll();
		//放到值栈中显示
		ActionContext.getContext().getValueStack().set("cList", cList);
		return "findAll";
	}
	//后台保存一级分类的方法
	public String save(){
		categoryService.save(category);
		
		//成功后页面跳转
		return "saveSuccess";
	}
	// 删除一级分类的方法:
			public String delete(){
				// 调用Service完成 一级分类的删除
				// 级联删除一定先查询在删除:
				category = categoryService.findByCid(category.getCid());
				categoryService.delete(category);
				// 进行页面转向:
				return "deleteSuccess";
			}
}
