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
    img{
    
      vertical-align: middle;
      width:auto;
      height:auto;
    }
  
  
  
  </style>
  </head>
  <body class="animsition animsition">
      <%@ include file="menu.jsp" %>
      
      <div class="banner banner-image-fit-screen">
        <div class="rev_slider slider-home-1" id="slider_1">
          <ul>
            <li>
              <img class="rev-slidebg" src="${pageContext.request.contextPath}/picture/s.jpg" alt="demo" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10">
            </li>
          </ul>
        </div>
      </div>
      <section class="boxed-sm">
        <div class="container">
          <div class="row">
            <div class="product-category-grid-style-1">
              <div class="row">
                <div class="col-sm-4">
                  <a href="#">
                    <figure class="product-category-item">
                      <div class="thumbnail">
                        <img src="${pageContext.request.contextPath}/picture/1.jpg" alt="" />
                      </div>
                      <figcaption>
                        <h3>新鲜蔬菜</h3>
                      </figcaption>
                    </figure>
                  </a>
                </div>
                <div class="col-sm-4">
                  <a href="#">
                    <figure class="product-category-item">
                      <div class="thumbnail">
                        <img src="${pageContext.request.contextPath}/picture/2.jpg" alt="" />
                      </div>
                      <figcaption>
                        <h3>新鲜水果</h3>
                      </figcaption>
                    </figure>
                  </a>
                </div>
                <div class="col-sm-4">
                  <a href="#">
                    <figure class="product-category-item">
                      <div class="thumbnail">
                        <img src="${pageContext.request.contextPath}/picture/3.jpg" alt="" />
                      </div>
                      <figcaption>
                        <h3>肉类</h3>
                      </figcaption>
                    </figure>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section class="boxed-sm">
        <div class="container">
          <div class="heading-wrapper text-center">
            <h3 class="heading">Our Products</h3>
          </div>
      <%@ include file="category.jsp" %>

          <div class="row">
            <div class="row js-product-masonry-layout-1 product-masonry-layout-1">
              <div class="grid-sizer"></div>
              
               <s:iterator var="p" value="hList">
                 <figure class="item">
                <div class="product product-style-2">
                  <div class="img-wrapper">
                    <a   href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>" >
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
                    <figcaption class="desc">

                    </figcaption>
                  </div>
                </div>
              </figure>
              </s:iterator>
              
      
    
              
              

              
            </div>
          </div>
        </div>
      </section>
      
      <div class="call-to-action-style-1">
        <img class="rellax bg-overlay" src="${pageContext.request.contextPath}/picture/1.jpg" alt="" />
        <div class="overlay-call-to-action"></div>
        <div class="container">
          <div class="row">
            <p class="h3">Organic Food</p>
            <h2>Healthy - Fresh - Delicious.</h2>
            <a class="btn btn-brand pill" href="#">更 多 </a>
          </div>
        </div>
      </div>
      
      <section class="boxed-sm">
        <div class="container">
          <div class="heading-wrapper text-center">
            <h3 class="heading">The Blog</h3>
          </div>
          <div class="row">
            <div class="row blog-h reverse flex one-row multi-row-sm">
              <div class="col-md-4">
                <div class="post">
                  <div class="img-wrapper js-set-bg-blog-thumb">
                    <a href="blog-detail.html">
                      <img src="${pageContext.request.contextPath}/picture/01.jpg" alt="Image" />
                    </a>
                  </div>
                  <div class="desc">
                    <h4>
                      <a href="blog-detail.html">Beauty With Organic Products</a>
                    </h4>
                    <p class="meta">
                      <span class="time">Feberuary 05, 2017</span>
                      <span class="comment">2</span>
                    </p>
                    <p>Etiam at varius diam, id blandit erat. Suspendisse eget volutpat risus, id venenatis justo. Fusce elementum ligula elit. Duis ultricies ultrices nibh, a tincidunt risus pretium eleifend. </p>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="post">
                  <div class="img-wrapper js-set-bg-blog-thumb">
                    <a href="blog-detail.html">
                      <img src="${pageContext.request.contextPath}/picture/02.jpg" alt="Image" />
                    </a>
                  </div>
                  <div class="desc">
                    <h4>
                      <a href="blog-detail.html">Green Vegetables Are Good For Healthy</a>
                    </h4>
                    <p class="meta">
                      <span class="time">January 30, 2017</span>
                      <span class="comment">0</span>
                    </p>
                    <p>Vivamus consectetur nulla mattis lorem ultricies, ac congue tellus consectetur. Vivamus sed purus volutpat, varius mauris id, tempus augue. Nuefd ans congue liquam.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="post">
                  <div class="img-wrapper js-set-bg-blog-thumb">
                    <a href="blog-detail.html">
                      <img src="${pageContext.request.contextPath}/picture/03.jpg" alt="Image" />
                    </a>
                  </div>
                  <div class="desc">
                    <h4>
                      <a href="blog-detail.html">Refreshing Green Smoothie Recipe</a>
                    </h4>
                    <p class="meta">
                      <span class="time">January 20, 2017</span>
                      <span class="comment">4</span>
                    </p>
                    <p>Praesent efficitur felis eu luctus vestibulum. In hac habitasse platea dictumst. Nam egestas eu nisl ac pellentesque. Duis congue suscipit lorem vel congue. </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    <div class="call-to-action-style-2">
      <div class="wrapper-carousel-background">
        <img src="${pageContext.request.contextPath}/picture/1-1.jpg" alt="" />
        <img src="${pageContext.request.contextPath}/picture/1-2.jpg" alt="" />
        <img src="${pageContext.request.contextPath}/picture/1-3.jpg" alt="" />
        <img src="${pageContext.request.contextPath}/picture/1-4.jpg" alt="" />
      </div>
      <div class="overlay-call-to-action"></div>
      <a class="btn btn-brand pill icon-left" href="#">
        <i class="fa fa-instagram"></i>现在 加入</a>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/settings.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/layers.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/navigation.css" />
    <script src="js/jquery.themepunch.tools.min.js"></script>
    <script src="js/jquery.themepunch.revolution.min.js"></script>
    <script src="js/revolution.extension.actions.min.js"></script>
    <script src="js/revolution.extension.carousel.min.js"></script>
    <script src="js/revolution.extension.kenburn.min.js"></script>
    <script src="js/revolution.extension.layeranimation.min.js"></script>
    <script src="js/revolution.extension.migration.min.js"></script>
    <script src="js/revolution.extension.navigation.min.js"></script>
    <script src="js/revolution.extension.parallax.min.js"></script>
    <script src="js/revolution.extension.slideanims.min.js"></script>
    <script src="js/revolution.extension.video.min.js"></script>
    <script src="js/global.js"></script>
    <script src="js/config-banner-home-1.js">


    </script>
    <script src="js/config-mm-menu.js"></script>
    <script src="js/config-set-bg-blog-thumb.js"></script>
    <script src="js/config-isotope-product-home-1.js">


    </script>
    <script src="js/config-carousel-thumbnail.js"></script>
    <script src="js/config-carousel-product-quickview.js"></script>
    <!-- Demo Only-->
    <script src="js/demo-add-to-cart.js">


    </script>
  </body>
</html>
     