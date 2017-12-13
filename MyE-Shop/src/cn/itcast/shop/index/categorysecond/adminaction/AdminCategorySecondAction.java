package cn.itcast.shop.index.categorysecond.adminaction;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.itcast.shop.index.categorysecond.service.CategorySecondService;
import cn.itcast.shop.index.categorysecond.vo.CategorySecond;
import cn.itcast.shop.index.utils.PageBean;

/**
 * 管理二级分类的action
 * @author lenovo
 *
 */
public class AdminCategorySecondAction extends ActionSupport implements ModelDriven<CategorySecond>{
   //模型驱动使用的对象
	private CategorySecond  categorySecond = new CategorySecond();
	public CategorySecond getModel(){
		return categorySecond;
	}
	//注入Service
    private CategorySecondService categorySecondService;
	public void setCategorySecondService(CategorySecondService categorySecondService) {
		this.categorySecondService = categorySecondService;
	}
	
	//接受page
	private Integer page;
	
	public void setPage(Integer page) {
		this.page = page;
	}

	//查询二级分类的方法
	public String findAllByPage(){
		PageBean<CategorySecond> pageBean = categorySecondService.findByPage(page);
		//将pageBean中的数据保存到值栈中
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findAll";
	}
	
	
}
