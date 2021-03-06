package cn.itcast.shop.index.categorysecond.adminaction;

import java.util.List;

import cn.itcast.shop.index.category.service.CategoryService;
import cn.itcast.shop.index.category.vo.Category;
import cn.itcast.shop.index.categorysecond.service.CategorySecondService;
import cn.itcast.shop.index.categorysecond.vo.CategorySecond;
import cn.itcast.shop.index.utils.PageBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 后台二级分类的管理的Action.
 * 
 * 
 */
public class AdminCategorySecondAction extends ActionSupport implements
		ModelDriven<CategorySecond> {


	private CategorySecond categorySecond = new CategorySecond();
	// 接收page参数:
	private Integer page;
	// 注入二级Service
	private CategorySecondService categorySecondService;
	// 注入一级分类的Service
	private CategoryService categoryService;

	public void setPage(Integer page) {
		this.page = page;
	}

	public void setCategorySecondService(
			CategorySecondService categorySecondService) {
		this.categorySecondService = categorySecondService;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public CategorySecond getModel() {
		return categorySecond;
	}

	// 带有分页的查询所有二级分类的操作:
	public String findAll() {
		
		PageBean<CategorySecond> pageBean = categorySecondService.findByPage(page);

		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findAll";
	}

	
	public String addPage() {
		// 查询所有一级分类.
		List<Category> cList = categoryService.findAll();
	
		ActionContext.getContext().getValueStack().set("cList", cList);

		return "addPage";
	}

	// 添加二级分类的方法:
	public String save() {
		categorySecondService.save(categorySecond);
		return "saveSuccess";
	}

	// 删除二级分类的方法:
	public String delete() {
		categorySecondService.delete(categorySecond);
		return "deleteSuccess";
	}

	// 编辑二级分类的方法:
	public String edit() {
		
		categorySecond = categorySecondService.findByCsid(categorySecond
				.getCsid());
		// 查询所有一级分类:
		List<Category> cList = categoryService.findAll();

		ActionContext.getContext().getValueStack().set("cList", cList);

		return "editSuccess";
	}
	
	// 修改二级分类的方法:
	public String update(){
		categorySecondService.update(categorySecond);
		
		return "updateSuccess";
	}
}
