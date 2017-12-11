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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
     <style>
    .sub-header .bg-overlay{
       margin-top:90px;
        height:550px;
        
    }
    .footer img{
     width:20px;
    }
   
    img{
    
      vertical-align: middle;
      width:180px;
      height:130px;
    }
    .woocommerce-checkout-payment img{
    margin-left: 30px;
    margin-right: 10px;
    width: 200px;
    height: 36px;
    
    
    }
  
  
  
  </style>
    <style>


    </style>
  </head>
  <body class="animsition">
    <div class="checkout" id="page">
      
       <%@ include file="menu.jsp" %>
      <section class="sub-header shop-detail-1">
        <img class="rellax bg-overlay" src="${pageContext.request.contextPath}/picture/s.jpg" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">Checkout</h3>
      </section>
      <section class="boxed-sm">
        <div class="container">
          <div class="woocommerce">
            <div class="woocommerce-info-wrapper">
              <div class="row">
                <div class="woocommerce-info">
                  <i class="fa fa-check"></i>Returning customer?
                  <a href="login.html">Click here to login</a>
                </div>
                <div class="woocommerce-info">
                  <i class="fa fa-check"></i>Have a coupon?
                  <a href="shop-cart.html">Click here to enter your code</a>
                </div>
              </div>
            </div>
            <div class="row">
              
              <form class="woocommerce-checkout">
               

             
                <div class="woocommerce-checkout-review-order">
                 
                  <h4>您的订单</h4>
                  <table class="woocommerce-checkout-review-order-table">
                  <s:iterator var="order" value="pageBean.list">
                    <thead>
                   
                      <tr>
                       <th colspan="5">订单编号:
						<s:property value="#order.oid"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						订单状态：
						<s:if test="#order.state == 1">
						  <a href="${pageContext.request.contextPath}/order_findByOid.action?oid=<s:property value="#order.oid"/>"><font color="red">付款<font/></a>
						</s:if>
						<s:if test="#order.state == 2">
					         已付款
						</s:if>
						<s:if test="#order.state == 3">
						  <a href="#"><font color="red">确认收货</font></a>
						</s:if>
						<s:if test="#order.state == 4">
						  交易完成
						</s:if>
						
						</th>
                      </tr>
                    </thead>
                  
                   <s:iterator var="orderItem" value="#order.orderItems">
                    <thead>
                   
                      <tr>
                        <th class="product-name">图片</th>
                        <th class="product-total">商品</th>
                        <th class="product-total">价格</th>
                        <th class="product-total">数量</th>
                        <th class="product-total">小计</th>
                      </tr>
                    </thead>
                    
                    <tbody>
                 
                      <tr class="cart_item">
                        <td class="product-thumbnail" width="60">
                         <img src="${pageContext.request.contextPath }/<s:property value="#orderItem.product.image"/>"/>
                        </td>
                        <td>
                        <s:property value="#orderItem.product.pname"/>
                          
                        </td>
                        <td>
                                                    ￥<s:property value="#orderItem.product.shop_price"/>元
                        </td>
                        <td>
                        <s:property value="#orderItem.count"/>
                        </td>
                        <td>
                                                    ￥<s:property value="#orderItem.subtotal"/>元
                        </td>
                        
                      </tr>
                      
                     
                      
                        
                     
                    </tbody>
                    </s:iterator>
                    </s:iterator>
                    <tr>
                       <td colspan="5">
                             <div class="row">
                  <div class="col-md-12 text-center">
                    <nav>
                      <span>第<s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/>页</span>
                     
                     
                      <ul class="pagination pagination-style-2">
                      <s:if test="pageBean.page != 1">
                        <li>
                           <a href="${pageContext.request.contextPath}/order_findByUid.action?&page=1" class="previousPage">
                            <i class="fa fa-long-arrow-left"></i>
                           </a>

                        </li>
                      </s:if>
                      
                       <s:iterator var="i" begin="1" end="pageBean.totalPage">
                       <s:if test="pageBean.page != #i">
                        <li>
                        <a href="${pageContext.request.contextPath}/order_findByUid.action?&page=<s:property value="#i"/>"><s:property value="#i"/></a>
                        </li>
                        </s:if>
                        <s:else>
				          <span class="currentPage"><s:property value="#i"/></span>
				        </s:else>
                        </s:iterator>
                        
                        
                         <s:if test="pageBean.page != pageBean.totalPage">
                        <li>
                          <a class="nextPage" href="${pageContext.request.contextPath}/order_findByUid.action?&page=<s:property value="pageBean.page+1"/>">
                          <i class="fa fa-long-arrow-right"></i>
                          </a>
                           
                        </li>
                        </s:if>
                      </ul>
                      
     
                  
                 
                    </nav>
                  </div>
               
                </div>
                     
                    
                       </td>
                    </tr>
                  </table>
                </div>
             
              </form>
              
            </div>
          </div>
        </div>
      </section>
    </div>
      <footer class="footer-style-1">
      <div class="container">
        <div class="row">
          <div class="footer-style-1-inner">
            <div class="widget-footer widget-text col-first col-small">
              <a href="#">
                <img src="${pageContext.request.contextPath}/picture/logo.png" alt="Logo Organic"/>
              </a>
              <div class="widget-link">
                <ul>
                  <li>
                    <span class="lnr lnr-map-marker icon"></span>
                    <span>379 5th Ave New York, NYC 10018</span>
                  </li>
                  <li>
                    <span class="lnr lnr-phone-handset icon"></span>
                    <a href="tel:0123456789">(+1) 96 716 6879</a>
                  </li>
                  <li>
                    <span class="lnr lnr-envelope icon"></span>
                    <a href="mailto: contact@site.com">contact@site.com </a>
                  </li>
                  <li>
                      <p>Copyright © 2017 Designed by AuThemes. All rights reserved.</p>
                  
                  </li>
                </ul>
              </div>
            </div>
            <div class="widget-footer widget-link col-second col-medium">
              <div class="list-link">
                <h4 class="h4 heading">SHOP</h4>
                <ul>
                  <li>
                    <a href="#">Food</a>
                  </li>
                  <li>
                    <a href="#">Farm</a>
                  </li>
                  <li>
                    <a href="#">Health</a>
                  </li>
                  <li>
                    <a href="#">Organic</a>
                  </li>
                </ul>
              </div>
              <div class="list-link">
                <h4 class="h4 heading">SUPPORT</h4>
                <ul>
                  <li>
                    <a href="#">Contact Us</a>
                  </li>
                  <li>
                    <a href="#">FAQ</a>
                  </li>
                  <li>
                    <a href="#">Privacy Policy</a>
                  </li>
                  <li>
                    <a href="#">Blog</a>
                  </li>
                </ul>
              </div>
              <div class="list-link">
                <h4 class="h4 heading">MY ACCOUNT</h4>
                <ul>
                  <li>
                    <a href="#">Sign In</a>
                  </li>
                  <li>
                    <a href="#">My Cart</a>
                  </li>
                  <li>
                    <a href="#">My Wishlist</a>
                  </li>
                  <li>
                    <a href="#">Check Out</a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="widget-footer widget-newsletter-footer col-last col-small">
              <h4 class="h4 heading">NEWSLETTER</h4>
              <p>Subscribe now to get daily updates</p>
              <form class="organic-form form-inline btn-add-on circle border">
                <div class="form-group">
                  <input class="form-control pill transparent" placeholder="Your Email..." type="email" />
                  <button class="btn btn-brand circle" type="submit">
                    <i class="fa fa-envelope-o"></i>
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      
    </footer>
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
