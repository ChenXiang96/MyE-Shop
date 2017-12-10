<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Home</title>
    <meta charset="utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="${pageContext.request.contextPath}/css/647be82565184316a7ba9bc638b40a97.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/1025b57c3b8b4b63a93efd3b6bed0d58.css" rel="stylesheet" />
    
    <link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
     <style>
    img{
    
      vertical-align: middle;
      width:auto;
      height:auto;
    }
  
  
  
  </style>
    <style>
    	.quantity input{
    		height:30px!important;
    	}
    	.quantity .plus,.quantity .minus{
    		width:30px!important;
    	}
    	.quantity .qty{
    		width:40px!important;
    	}
    	.woocommerce th{
    		text-align:center!important;
    	}
    	.woocommerce td{
    		text-align:center!important;
    	}
    	.woocommerce .form-coupon .form-group{
    	     text-align:left!important;
    	}
    	.cart table img {
    	      width:75px;
    	      height:65px;
    	}

    </style>
    <script src="js/jquery.min.js"></script>
     <script>  
    $(function(){  
    var t = $("#count2");  
    var pri = $("#pri");
    //console.log(t);
    
    $("#Add").click(function(){ 
        t.val(parseInt(t.val())+1);  
        $("#min").removeAttr("disabled");                 //当按加1时，解除$("#min")不可读状态  
        setTotal();  
    })  
    $("#min").click(function(){  
               if (parseInt(t.val())>1) {                     //判断数量值大于1时才可以减少  
                t.val(parseInt(t.val())-1)  
                }else{  
                $("#min").attr("disabled","disabled")        //当$("#min")为1时，设置$("#min")为不可读状态  
               }  
       setTotal();  
    })  
     function setTotal(){  
         $("#total").html((parseInt(t.val())*(parseInt(pri.val()))));  
     }  
      setTotal();  
})  
</script> 
  </head>
  <body class="animsition">
    <div class="shop-cart" id="page">
     
       <%@ include file="menu.jsp" %>
      <section class="sub-header shop-detail-1">
        <img class="rellax bg-overlay" src="${pageContext.request.contextPath}/picture/013.jpg" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">Shop Cart</h3>
      </section>
      <%@ include file="category2.jsp" %>
      
      <section class="boxed-sm">
 
        <div class="container cart">
         <s:if test="#session.cart.cartItems.size() != 0">
      
          <div class="woocommerce">
            <form class="woocommerce-cart-form cart">
             
              <table class="woocommerce-cart-table" >
                <thead>
                  <tr>
                    <th class="product-thumbnail">图片</th>
                    <th class="product-name">商品</th>
                    <th class="product-weight">重量</th>
                    <th class="product-quantity">数量</th>
                    <th class="product-price">单价</th>
                    <th class="product-subtotal">小计</th>
                    <th class="product-remove">删除</th>
                  </tr>
                </thead>
                <tbody>
      
                 <s:iterator var="cartItem" value="#session.cart.cartItems">
                  <tr>
                    <td class="product-thumbnail" width="60">
                      <img src="${pageContext.request.contextPath}/<s:property value="#cartItem.product.image"/>" alt="product-thumbnail">
                    </td>
                    <td class="product-name" data-title="Product">
                      <a class="product-name" href="shop-detail.html"><s:property value="#cartItem.product.pname"/></a>
                    </td>
                    <td class="product-weight" data-title="Weight">0.4 kg</td>
                     
       
                  <td data-title="Quantity">
                    <div class="quantity buttons-added">
                     <input class="minus" value="-" type="button" id="min" name="">
                      <input class="qty" id="count2" step="1" min="0" max="" name="product-name" value="<s:property value="#cartItem.count"/>" title="Qty" size="4" pattern="[0-9]*" inputmode="numeric" type="text">
                       <input class="plus" value="+" type="button" id="Add" name="">
                       </div>
                    </td>
                    
                    
                    <td class="product-price" data-title="Price" ><lable id="pri" name="pri"><s:property value="#cartItem.product.shop_price"/></lable></td>
                    <td class="product-subtotal" data-title="Total" >￥<s:property value="#cartItem.subtotal"/>元</td>
                    <td class="product-remove" >
                      <a class="remove"  href="${pageContext.request.contextPath }/cart_removeCart.action?pid=<s:property value="#cartItem.product.pid"/>" aria-label="Remove this item">×</a>
                    </td>
                  </tr>
                  </s:iterator>
                </tbody>
                <tfoot>
                  <tr>
                    <td colspan="7">
                    
                      <div class="form-coupon organic-form">
                        <div class="form-group">
                          <input class="form-control pill" placeholder="Coupon Code">
                        </div>
                        
                        <div class="form-group">
                          <a class="btn btn-brand pill" href="${pageContext.request.contextPath}/order_save.action">提交订单</a>
                        </div>
                        
                        <div class="form-group update-cart">
                          <a class="btn btn-brand-ghost pill" href="${pageContext.request.contextPath }/cart_clearCart.action">清空购物车</a>
                        </div>
                      </div>
                    </td>
                  </tr>
                </tfoot>
              </table>
            </form>
            
            <div class="cart_totals">
              <h3 class="title">Cart Total</h3>
              <div class="row">
                <div class="col-md-8">
                  <table class="woocommerce-cart-subtotal">
                    <tbody>
                     
                      <tr>
                        <th>Total</th>
                        <td data-title="Total">￥<s:property value="#session.cart.total"/></td>
                      </tr>
                    </tbody>
                  </table>
                  <div class="proceed-to-checkout">
                    <a class="btn btn-brand pill" href="#">PROCEED TO CHECKOUT</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        
        </s:if>
        <s:else>
			<div class="span24">
			    <div class="call-to-action-style-1">
					 <h2><font color="#A2CD5A">亲！您的购物车还是空滴~</font></h2>
					 <h2>
					  <img src="${pageContext.request.contextPath}/picture/gwc2.jpg" alt="">
					 </h2>
					  <div>
					 <a href="${pageContext.request.contextPath}/index.action"><button class="btn btn-brand no-radius" >继续逛</button></a>
					 </div>
				</div>
			</div>
		</s:else>
        </div>
       
      </section>
    </div>
  <%@ include file="footer.jsp" %>
   
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/function-check-viewport.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/select2.full.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/jquery.mmenu.all.min.js"></script>
    <script src="js/rellax.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/bootstrap-notify.min.js"></script>
    <script src="js/bootstrap-slider.js"></script>
    <script src="js/in-view.min.js"></script>
    <script src="js/countup.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/global.js"></script>
    <script src="js/config-mm-menu.js"></script>
  </body>
</html>
