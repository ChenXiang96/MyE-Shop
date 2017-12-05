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
  </head>
  <body class="animsition">
   <%@ include file="menu.jsp" %>
    <div class="shop-layout-3" id="page">
             
             
      <section class="sub-header shop-layout-1">
        <img class="rellax bg-overlay" src="${pageContext.request.contextPath}/picture/01.jpg" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">Shop</h3>
      </section>
      <%@ include file="category2.jsp" %>
      
      <section class="boxed-sm">
        <div class="container">
          <div class="row">
            <div class="row main">
              <div class="col-md-3">
                <div class="sidebar">
                 
                  
                  <div class="widget widget-categories">
                    <h4 class="title-widget text-center">产品分类·categories</h4>
                    <ul>
                     <s:iterator  var="c" value="#session.cList">
                      <li>
                        <dt>
                         <a href="shop.html"><s:property value="#c.cname"/></a>
                        </dt>
                      </li>
                         
                         <s:iterator var="cs" value="#c.categorySeconds">
									<dd>
										<a ><s:property value="#cs.csname"/></a>
									</dd>
					     		 </s:iterator>
                         </s:iterator>
                         
                        
                    </ul>
                  </div>
                  
                  
                  
                 
                </div>
              </div>
              
              <div class="col-md-9">
                <div class="woocommerce-top-control wrapper">
                  <div class="woocommerce-top-control">
                    <p class="woocommerce-result-count">Showing 1 - 12 of 30 results</p>
                    <form class="woocommerce-ordering select-custom-wrapper" method="get">
                      <select class="orderby select-custom-wrapper" name="orderby">
                        <option value="menu_order" selected="selected">Default sorting</option>
                        <option value="popularity">Sort by popularity</option>
                        <option value="rating">Sort by average rating</option>
                        <option value="date">Sort by newness</option>
                        <option value="price">Sort by price: low to high</option>
                        <option value="price-desc">Sort by price: high to low</option>
                      </select>
                    </form>
                  </div>
                </div>
                
                
                
                
                <div class="row product-grid-equal-height-wrapper product-equal-height-3-columns flex multi-row">
                
                <s:iterator var = "p" value="pageBean.list">
                  <figure class="item">
                    <div class="product product-style-1">
                      <div class="img-wrapper">
                        <a  href="${pageContext.request.contextPath}/product_findByPid.action?pid=<s:property value="#p.pid"/>">
                          <img class="img-responsive" src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" alt="product thumbnail" />
                        </a>
                        
                      <div class="product-control-wrapper bottom-right">
                      <div class="wrapper-control-item">
                        <a href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>" type="button">
                          <span class="lnr lnr-eye"></span>
                        </a>
                      </div>
                          
                          <div class="wrapper-control-item item-wish-list">
                            <a class="js-wish-list js-notify-add-wish-list" href="#">
                              <span class="lnr lnr-heart"></span>
                            </a>
                          </div>
                          
                          <div class="wrapper-control-item item-add-cart js-action-add-cart">
                            <a class="animate-icon-cart" href="#">
                              <span class="lnr lnr-cart"></span>
                            </a>
                            <svg x="0px" y="0px" width="36px" height="32px" viewbox="0 0 36 32">
                              <path stroke-dasharray="19.79 19.79" fill="none" ,="," stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11"></path>
                            </svg>
                          </div>
                          
                        </div>
                        
                      </div>
                      <figcaption class="desc text-center">
                        <h3>
                          <a class="product-name" href="shop-detail.html">	 <s:property value="#p.pname"/></a>
                        </h3>
                        <span class="price"> ￥<s:property value="#p.shop_price"/></span>
                      </figcaption>
                    </div>
                  </figure>
                  </s:iterator>

                  
                </div>
                
                <div class="row">
                  <div class="col-md-12 text-center">
                    <nav>
                      <span>第<s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/>页</span>
                      <ul class="pagination pagination-style-2">
                      <s:if test="pageBean.page != 1">
                        <li>
                           <a href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page-1"/>" class="previousPage">
                            <i class="fa fa-long-arrow-left"></i>
                           </a>

                        </li>
                      </s:if>
                      
                       <s:iterator var="i" begin="1" end="pageBean.totalPage">
                       <s:if test="pageBean.page != #i">
                        <li>
                        <a href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="#i"/>"><s:property value="#i"/></a>
                        </li>
                        </s:if>
                        <s:else>
				          <span class="currentPage"><s:property value="#i"/></span>
				        </s:else>
                        </s:iterator>
                        
                        
                         <s:if test="pageBean.page != pageBean.totalPage">
                        <li>
                          <a class="nextPage" href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page+1"/>">
                          <i class="fa fa-long-arrow-right"></i>
                          </a>
                           
                        </li>
                        </s:if>
                      </ul>
                    </nav>
                  </div>
               
                </div>
              </div>
            </div>
          </div>
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
    <script src="js/config-price-slider.js">


    </script>
    <script src="js/config-carousel-product-quickview.js"></script>
    <!-- Demo Only-->
    <script src="js/demo-add-to-cart.js">


    </script>
  </body>
</html>
