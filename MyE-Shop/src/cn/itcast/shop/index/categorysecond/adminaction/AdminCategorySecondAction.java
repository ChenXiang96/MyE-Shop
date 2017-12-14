package cn.itcast.shop.index.categorysecond.adminaction;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.itcast.shop.index.category.service.CategoryService;
import cn.itcast.shop.index.category.vo.Category;
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
	
	// 注入一级分类的Service
	  private CategoryService categoryService;
      public void setCategoryService(CategoryService categoryService) {
				this.categoryService = categoryService;
			}
	
	//接受page
	private Integer page;
	
	public void setPage(Integer page) {
		this.page = page;
	}

	//查询二级分类的方法
	public String findAll(){
		PageBean<CategorySecond> pageBean = categorySecondService.findByPage(page);
		//将pageBean中的数据保存到值栈中
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findAll";
	}
	// 跳转到添加二级分类的方法:
    public String addPage() {
  	// 查询所有一级分类.
     List<Category> cList = categoryService.findAll();
     // 将集合存入到值栈中.
	  ActionContext.getContext().getValueStack().set("cList", cList);
	  // 页面跳转:
	  return "addPage";
 }
  //保存二级分类的方法
  	public String save(){
  		categorySecondService.save(categorySecond);
  		return "saveSuccess";

  	}	
  //删除二级分类的方法
  	public String delete(){
  		//如果级联删除，先查询再删除，配置cascade
  		categorySecond = categorySecondService.findByCsid(categorySecond.getCsid());
  		categorySecondService.delete(categorySecond);
  		return "deleteSuccess";
  	}
 
 // 编辑二级分类的方法:
 	public String edit() {
 		// 根据id查询二级分类:
 		categorySecond = categorySecondService.findByCsid(categorySecond
 				.getCsid());
 		// 查询所有一级分类:
 		List<Category> cList = categoryService.findAll();
 		// 将集合存入到值栈中.
 		ActionContext.getContext().getValueStack().set("cList", cList);
 		// 页面跳转:
 		return "editSuccess";
 	}
 // 修改二级分类的方法:
 	public String update(){
 		categorySecondService.update(categorySecond);
 	// 查询所有一级分类:
 	 		List<Category> cList = categoryService.findAll();
 	 		// 将集合存入到值栈中.
 	 		ActionContext.getContext().getValueStack().set("cList", cList);
 		return "updateSuccess";
 	}
   
	
}
