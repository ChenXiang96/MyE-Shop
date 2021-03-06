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
	
    private Integer pid;

    private Integer count;

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


	public String addCart() {

		CartItem cartItem = new CartItem();

		cartItem.setCount(count);


		Product product = productService.findByPid(pid);
		cartItem.setProduct(product);
	
		Cart cart = getCart();
		cart.addCart(cartItem);
		return "addCart";
	}

	public String clearCart(){
		Cart cart = getCart();
		cart.clearCart();
		return "clearCart";
	}

	  public String removeCart(){
	
			Cart cart = getCart();
	
			cart.removeCart(pid);

			return "removeCart";
		}

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
