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
    <div class="contact" id="page">
      
       <%@ include file="menu.jsp" %>
      <section class="sub-header shop-layout-1">
        <img class="rellax bg-overlay" src="${pageContext.request.contextPath}/picture/09.jpg" alt="">
        <div class="overlay-call-to-action"></div>
        <h3 class="heading-style-3">Blog Detail</h3>
      </section>
      <section class="boxed-sm">
        <div class="container">
          <div class="row">
            <div class="row icon-box-contact-wrapper">
              <div class="row main">
                <div class="col-md-4">
                  <div class="icon-box">
                    <i class="fa fa-map-marker"></i>
                    <p>12/2th Quincy St, NYC 12018</p>
                  </div>
                </div>
                <div class="col-md-4">
                  <a class="icon-box" href="tel:0123456789 ">
                    <i class="fa fa-mobile"></i>(+1) 11 321 4567</a>
                </div>
                <div class="col-md-4">
                  <a class="icon-box" href="tel:0123456789 ">
                    <i class="fa fa-envelope-o"></i>contact@site.com </a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="map-canvas" id="js-map-canvas"></div>
          </div>
        </div>
        <div class="container">
          <div class="row form-contact">
            <div class="row main">
              <form>
                <div class="col-md-12">
                  <div class="form-group organic-form xs-radius">
                    <textarea class="form-control" placeholder="Your Message" rows="6"></textarea>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group organic-form xs-radius">
                    <input class="form-control" placeholder="Your Name">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group organic-form xs-radius">
                    <input class="form-control" placeholder="Your Email" type="email">
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group organic-form xs-radius">
                    <input class="form-control" placeholder="Phone Number">
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group organic-form xs-radius">
                    <button class="btn btn-brand pill">SEND EMAIL</button>
                  </div>
                </div>
              </form>
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
    <script src="js/config-set-bg-blog-thumb.js"></script>
    <script src="js/0aee2109a6234e989c7511d5932dc2ac.js"></script>
    <script src="js/config-google-map.js"></script>
  </body>
</html>
