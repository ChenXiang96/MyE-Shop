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
                  <figure class="item">
                    <div class="product product-style-1">
                      <div class="img-wrapper">
                        <a href="shop-detail.html">
                          <img class="img-responsive" src="${pageContext.request.contextPath}/picture/01.jpg" alt="product thumbnail" />
                        </a>
                        <div class="product-control-wrapper bottom-right">
                          <div class="wrapper-control-item">
                            <a class="js-quick-view" href="#" type="button" data-toggle="modal" data-target="#quick-view-product">
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
                          <a class="product-name" href="shop-detail.html">Salad</a>
                        </h3>
                        <span class="price">$3.20</span>
                      </figcaption>
                    </div>
                  </figure>
                  <figure class="item">
                    <div class="product product-style-1">
                      <div class="img-wrapper">
                        <a href="shop-detail.html">
                          <img class="img-responsive" src="${pageContext.request.contextPath}/picture/02.jpg" alt="product thumbnail" />
                        </a>
                        <div class="product-control-wrapper bottom-right">
                          <div class="wrapper-control-item">
                            <a class="js-quick-view" href="#" type="button" data-toggle="modal" data-target="#quick-view-product">
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
                          <a class="product-name" href="shop-detail.html">Onion</a>
                        </h3>
                        <span class="price">$3.20</span>
                      </figcaption>
                    </div>
                  </figure>
                  <figure class="item">
                    <div class="product product-style-1">
                      <div class="img-wrapper">
                        <a href="shop-detail.html">
                          <img class="img-responsive" src="${pageContext.request.contextPath}/picture/03.jpg" alt="product thumbnail" />
                        </a>
                        <div class="product-control-wrapper bottom-right">
                          <div class="wrapper-control-item">
                            <a class="js-quick-view" href="#" type="button" data-toggle="modal" data-target="#quick-view-product">
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
                          <a class="product-name" href="shop-detail.html">Bean</a>
                        </h3>
                        <span class="price">$3.50</span>
                      </figcaption>
                    </div>
                  </figure>
                  <figure class="item">
                    <div class="product product-style-1">
                      <div class="img-wrapper">
                        <a href="shop-detail.html">
                          <img class="img-responsive" src="${pageContext.request.contextPath}/picture/04.jpg" alt="product thumbnail" />
                        </a>
                        <div class="product-control-wrapper bottom-right">
                          <div class="wrapper-control-item">
                            <a class="js-quick-view" href="#" type="button" data-toggle="modal" data-target="#quick-view-product">
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
                          <a class="product-name" href="shop-detail.html">Lemon</a>
                        </h3>
                        <span class="price">$1.08</span>
                      </figcaption>
                    </div>
                  </figure>
                  <figure class="item">
                    <div class="product product-style-1">
                      <div class="img-wrapper">
                        <a href="shop-detail.html">
                          <img class="img-responsive" src="${pageContext.request.contextPath}/picture/05.jpg" alt="product thumbnail" />
                        </a>
                        <div class="product-control-wrapper bottom-right">
                          <div class="wrapper-control-item">
                            <a class="js-quick-view" href="#" type="button" data-toggle="modal" data-target="#quick-view-product">
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
                          <a class="product-name" href="shop-detail.html">Spinach</a>
                        </h3>
                        <span class="price">$2.26</span>
                      </figcaption>
                    </div>
                  </figure>
                  <figure class="item">
                    <div class="product product-style-1">
                      <div class="img-wrapper">
                        <a href="shop-detail.html">
                          <img class="img-responsive" src="${pageContext.request.contextPath}/picture/06.jpg" alt="product thumbnail" />
                        </a>
                        <div class="product-control-wrapper bottom-right">
                          <div class="wrapper-control-item">
                            <a class="js-quick-view" href="#" type="button" data-toggle="modal" data-target="#quick-view-product">
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
                          <a class="product-name" href="shop-detail.html">Apple</a>
                        </h3>
                        <span class="price">$4.05</span>
                      </figcaption>
                    </div>
                  </figure>
                  <figure class="item">
                    <div class="product product-style-1">
                      <div class="img-wrapper">
                        <a href="shop-detail.html">
                          <img class="img-responsive" src="${pageContext.request.contextPath}/picture/07.jpg" alt="product thumbnail" />
                        </a>
                        <div class="product-control-wrapper bottom-right">
                          <div class="wrapper-control-item">
                            <a class="js-quick-view" href="#" type="button" data-toggle="modal" data-target="#quick-view-product">
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
                          <a class="product-name" href="shop-detail.html">Broccoli</a>
                        </h3>
                        <span class="price">$3.88</span>
                      </figcaption>
                    </div>
                  </figure>
                  <figure class="item">
                    <div class="product product-style-1">
                      <div class="img-wrapper">
                        <a href="shop-detail.html">
                          <img class="img-responsive" src="${pageContext.request.contextPath}/picture/08.jpg" alt="product thumbnail" />
                        </a>
                        <div class="product-control-wrapper bottom-right">
                          <div class="wrapper-control-item">
                            <a class="js-quick-view" href="#" type="button" data-toggle="modal" data-target="#quick-view-product">
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
                          <a class="product-name" href="shop-detail.html">Brasil</a>
                        </h3>
                        <span class="price">$1.55</span>
                      </figcaption>
                    </div>
                  </figure>
                  <figure class="item">
                    <div class="product product-style-1">
                      <div class="img-wrapper">
                        <a href="shop-detail.html">
                          <img class="img-responsive" src="${pageContext.request.contextPath}/picture/09.jpg" alt="product thumbnail" />
                        </a>
                        <div class="product-control-wrapper bottom-right">
                          <div class="wrapper-control-item">
                            <a class="js-quick-view" href="#" type="button" data-toggle="modal" data-target="#quick-view-product">
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
                          <a class="product-name" href="shop-detail.html">Pear</a>
                        </h3>
                        <span class="price">$4.80</span>
                      </figcaption>
                    </div>
                  </figure>
                  <figure class="item">
                    <div class="product product-style-1">
                      <div class="img-wrapper">
                        <a href="shop-detail.html">
                          <img class="img-responsive" src="${pageContext.request.contextPath}/picture/010.jpg" alt="product thumbnail" />
                        </a>
                        <div class="product-control-wrapper bottom-right">
                          <div class="wrapper-control-item">
                            <a class="js-quick-view" href="#" type="button" data-toggle="modal" data-target="#quick-view-product">
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
                          <a class="product-name" href="shop-detail.html">Tomanto</a>
                        </h3>
                        <span class="price">$2.32</span>
                      </figcaption>
                    </div>
                  </figure>
                  <figure class="item">
                    <div class="product product-style-1">
                      <div class="img-wrapper">
                        <a href="shop-detail.html">
                          <img class="img-responsive" src="${pageContext.request.contextPath}/picture/011.jpg" alt="product thumbnail" />
                        </a>
                        <div class="product-control-wrapper bottom-right">
                          <div class="wrapper-control-item">
                            <a class="js-quick-view" href="#" type="button" data-toggle="modal" data-target="#quick-view-product">
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
                          <a class="product-name" href="shop-detail.html">Bitter Melon</a>
                        </h3>
                        <span class="price">$5.20</span>
                      </figcaption>
                    </div>
                  </figure>
                  <figure class="item">
                    <div class="product product-style-1">
                      <div class="img-wrapper">
                        <a href="shop-detail.html">
                          <img class="img-responsive" src="${pageContext.request.contextPath}/picture/012.jpg" alt="product thumbnail" />
                        </a>
                        <div class="product-control-wrapper bottom-right">
                          <div class="wrapper-control-item">
                            <a class="js-quick-view" href="#" type="button" data-toggle="modal" data-target="#quick-view-product">
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
                          <a class="product-name" href="shop-detail.html">Cucumber</a>
                        </h3>
                        <span class="price">$3.45</span>
                      </figcaption>
                    </div>
                  </figure>
                </div>
                <div class="row">
                  <div class="col-md-12 text-center">
                    <nav>
                      <ul class="pagination pagination-style-2">
                        <li>
                          <a class="prev page-numbers" href="#">
                            <i class="fa fa-long-arrow-left"></i>
                          </a>
                        </li>
                        <li>
                          <a class="page-numbers" href="#">3</a>
                        </li>
                        <li>
                          <a class="page-numbers" href="#">4</a>
                        </li>
                        <li>
                          <span class="page-numbers current">5</span>
                        </li>
                        <li>
                          <a class="next page-numbers" href="#">
                            <i class="fa fa-long-arrow-right"></i>
                          </a>
                        </li>
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
    <div class="modal fade" id="quick-view-product" tabindex="-1" role="dialog">
      <div class="modal-dialog modal-lg modal-quickview woocommerce" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="col-md-6">
                <div class="woocommerce-product-gallery">
                  <div class="main-carousel-product-quick-view">
                    <div class="item">
                      <img class="img-responsive" src="${pageContext.request.contextPath}/picture/01.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="${pageContext.request.contextPath}/picture/02.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="${pageContext.request.contextPath}/picture/03.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="${pageContext.request.contextPath}/picture/04.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="${pageContext.request.contextPath}/picture/05.jpg" alt="product thumbnail" />
                    </div>
                  </div>
                  <div class="thumbnail-carousel-product-quickview">
                    <div class="item">
                      <img class="img-responsive" src="${pageContext.request.contextPath}/picture/01.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="${pageContext.request.contextPath}/picture/02.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="${pageContext.request.contextPath}/picture/03.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="${pageContext.request.contextPath}/picture/04.jpg" alt="product thumbnail" />
                    </div>
                    <div class="item">
                      <img class="img-responsive" src="${pageContext.request.contextPath}/picture/05.jpg" alt="product thumbnail" />
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="summary">
                  <div class="desc">
                    <div class="header-desc">
                      <h2 class="product-title">Sald</h2>
                      <p class="price">$2.00</p>
                    </div>
                    <div class="body-desc">
                      <div class="woocommerce-product-details-short-description">
                        <p>Duis vestibulum ante velit. Pellentesque orci felis, pharetra ut pharetra ut, interdum at mauris. Aenean efficitur aliquet libero sit amet scelerisque. Suspendisse efficitur mollis eleifend. Aliquam tortor nibh, venenatis quis
                          sem dapibus, varius egestas lorem a sollicitudin. </p>
                      </div>
                    </div>
                    <div class="footer-desc">
                      <form class="cart">
                        <div class="quantity buttons-added">
                          <input class="minus" value="-" type="button" />
                          <input class="input-text qty text" step="1" min="1" max="" name="quantity" value="1" title="Qty" size="4" pattern="[0-9]*" inputmode="numeric" type="number" />
                          <input class="plus" value="+" type="button" />
                        </div>
                        <div class="group-btn-control-wrapper">
                          <button class="btn btn-brand no-radius">ADD TO CART</button>
                          <button class="btn btn-wishlist btn-brand-ghost no-radius">
                            <i class="fa fa-heart"></i>
                          </button>
                        </div>
                      </form>
                    </div>
                  </div>
                  <div class="product-meta">
                    <p class="posted-in">Categories:
                      <a href="#" rel="tag">Food</a>
                    </p>
                    <p class="tagged-as">Tags:
                      <a href="#" rel="tag">Natural</a>,
                      <a href="#" rel="tag">Organic</a>,
                      <a href="#" rel="tag">Health</a>,
                      <a href="#" rel="tag">Green</a>,
                      <a href="#" rel="tag">Vegetable</a>
                    </p>
                    <p class="id">ID:
                      <a href="#">A203</a>
                    </p>
                  </div>
                  <div class="widget-social align-left">
                    <ul>
                      <li>
                        <a class="facebook" data-toggle="tooltip" title="Facebook" href="http://www.facebook.com/authemes">
                          <i class="fa fa-facebook"></i>
                        </a>
                      </li>
                      <li>
                        <a class="pinterest" data-toggle="tooltip" title="Pinterest" href="http://www.pinterest.com/authemes">
                          <i class="fa fa-pinterest"></i>
                        </a>
                      </li>
                      <li>
                        <a class="twitter" data-toggle="tooltip" title="Twitter" href="http://www.twitter.com/authemes">
                          <i class="fa fa-twitter"></i>
                        </a>
                      </li>
                      <li>
                        <a class="google-plus" data-toggle="tooltip" title="Google Plus" href="https://plus.google.com/authemes">
                          <i class="fa fa-google-plus"></i>
                        </a>
                      </li>
                      <li>
                        <a class="instagram" data-toggle="tooltip" title="Instagram" href="https://instagram.com/authemes">
                          <i class="fa fa-instagram"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
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
