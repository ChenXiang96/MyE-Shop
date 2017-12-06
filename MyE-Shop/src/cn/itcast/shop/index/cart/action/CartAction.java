package cn.itcast.shop.index.cart.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import cn.itcast.shop.index.cart.vo.Cart;
import cn.itcast.shop.index.cart.vo.CartItem;
import cn.itcast.shop.index.product.service.ProductService;
import cn.itcast.shop.index.product.vo.Product;

/**
 * 购物车的action
 * @author lenovo
 *
 */
public class CartAction extends ActionSupport{
	   //接收pid
    private Integer pid;
   //接收count
    private Integer count;
  //注入商品service
		private ProductService productService;
    
   public void setPid(Integer pid) {
		this.pid = pid;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

   public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	//将购物项添加到购物车：执行的方法
	public String addCart() {
	    //封装cartItem对象
		CartItem cartItem = new CartItem();
		//设置数量
		cartItem.setCount(count);
		//设置商品
		//根据商品pid查询
		Product product = productService.findByPid(pid);
		cartItem.setProduct(product);
		//将购物项添加到购物车，从session中获得cart
		Cart cart = getCart();
		cart.addCart(cartItem);
		return "addCart";
	}
	//清空购物车的方法
	public String clearCart(){
		Cart cart = getCart();
		cart.clearCart();
		return "clearCart";
	}
	 //从购物车中移除购物项的方法
	  public String removeCart(){
			// 获得购物车对象
			Cart cart = getCart();
			// 调用购物车中移除的方法:
			cart.removeCart(pid);
			// 返回页面:
			return "removeCart";
		}
	//页面转向
			public String myCart(){
				
				return "myCart";
			}
   /**
    * 获得session中的cart的方法
    * @return
    */
	private Cart getCart() {
		// TODO Auto-generated method stub
		
	    Cart cart = (Cart)ServletActionContext.getRequest().getSession().getAttribute("cart");
	    if(cart == null){
	    	cart = new Cart();
	    	ServletActionContext.getRequest().getSession().setAttribute("cart", cart);
	    }
		return cart;
	}


		
}
