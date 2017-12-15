package cn.itcast.shop.index.cart.vo;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

import cn.itcast.shop.index.cart.vo.CartItem;

/**
 * 购物车对象
 * @author lenovo
 *
 */
public class Cart implements Serializable{

	private Map<Integer, CartItem> map = new LinkedHashMap<Integer, CartItem>();


	public Collection<CartItem> getCartItems(){
		return map.values();
	}
	
	// 购物总计:
	private double total;

	public double getTotal() {
		return total;
	}

	// 购物车的功能:

	public void addCart(CartItem cartItem) {
	
		Integer pid = cartItem.getProduct().getPid();

		if(map.containsKey(pid)){
			
			CartItem _cartItem = map.get(pid);
			_cartItem.setCount(_cartItem.getCount()+cartItem.getCount());
		}else{

			map.put(pid, cartItem);
		}

		total += cartItem.getSubtotal();
	}


	public void removeCart(Integer pid) {

		CartItem cartItem = map.remove(pid);

		total -= cartItem.getSubtotal();
	}


	public void clearCart() {
		// 将所有购物项清空
		map.clear();
		// 将总计设置为0
		total = 0;
	}
}
