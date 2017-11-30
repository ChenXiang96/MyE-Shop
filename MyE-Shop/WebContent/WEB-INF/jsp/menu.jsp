<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

      <header class="header-style-1">
        <div class="container">
          <div class="row">
            <div class="header-1-inner">
              <a class="brand-logo animsition-link" href="index.html">
                <img class="img-responsive" src="${pageContext.request.contextPath}/picture/logo.png" alt="" />
              </a>
              <nav>
                <ul class="menu hidden-xs">
                  <li>
                    <a href="index.html">首页</a>
                    <ul>
                      <li>
                        <a href="index.html">Home Version 1</a>
                      </li>
                      <li>
                        <a href="index-02.html">Home Version 2</a>
                      </li>
                      <li>
                        <a href="index-03.html">Home Version 3</a>
                      </li>
                      <li>
                        <a href="index-04.html">Home Version 4</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a class="active" href="shop.html">购物</a>
                    <ul>
                      <li>
                        <a href="shop.html">Shop List</a>
                      </li>
                      <li>
                        <a href="shop-02.html">Shop List Version 2</a>
                      </li>
                      <li>
                        <a href="shop-03.html">Shop List Version 3</a>
                      </li>
                      <li>
                        <a href="shop-04.html">Shop List Version 4</a>
                      </li>
                      <li>
                        <a href="shop-detail.html">Shop Detail</a>
                        <ul>
                          <li>
                            <a href="shop-detail.html">购物详情</a>
                          </li>
                          <li>
                            <a href="shop-detail-02.html">Shop Detail Version 2</a>
                          </li>
                          <li>
                            <a href="shop-detail-03.html">Shop Detail Version 3</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="wish-list.html">愿景清单</a>
                      </li>
                      <li>
                        <a href="shop-cart.html">购物车</a>
                      </li>
                      <li>
                        <a href="check-out.html">查看</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="about.html">关于我们</a>
                  </li>
                  <li>
                    <a href="blog.html">小组</a>
                    <ul>
                      <li>
                        <a href="blog.html">Blog List Version 1</a>
                      </li>
                      <li>
                        <a href="blog-02.html">Blog List Version 2</a>
                      </li>
                      <li>
                        <a href="blog-03.html">Blog List Version 3</a>
                      </li>
                      <li>
                        <a href="blog-04.html">Blog List Version 4</a>
                      </li>
                      <li>
                        <a href="blog-detail.html">Blog Detail</a>
                        <ul>
                          <li>
                            <a href="blog-detail.html">Blog Detail</a>
                          </li>
                          <li>
                            <a href="blog-detail-02.html">Blog Detail Version 2</a>
                          </li>
                          <li>
                            <a href="blog-detail-03.html">Blog Detail Version 3</a>
                          </li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                 
                  <li>
                    <a href="contact.html">联系我们</a>
                  </li>
                  <li>
                  <s:if test="#session.existuser == null">
                  <li>
                     <a href="${pageContext.request.contextPath}/user_loginPage.action">登录</a>
                  </li>
                  
                  <li>
                      <a href="${pageContext.request.contextPath}/user_registPage.action">注册</a>
                  </li>
                 </s:if>
                 </li>
         
                 <li>
                  <c:else>
                     <li>
                       	<s:property value="#session.existuser.name"/>
                     </li>
                     
                      <li style="margin-left:20px">|</li>
                     
                     <li>
                         <a href="${pageContext.request.contextPath}/user_quit.action">退出</a>
                     </li>

                  </c:else>
                  </li>
                </ul>
              </nav>
              <aside class="right">
                <div class="widget widget-control-header">
                  <div class="select-custom-wrapper">
                    <select class="no-border">
                      <option>USD</option>
                      <option>VND</option>
                      <option>EUR</option>
                      <option>JPY</option>
                    </select>
                  </div>
                </div>
                <div class="widget widget-control-header widget-search-header">
                  <a class="control btn-open-search-form js-open-search-form-header" href="#">
                    <span class="lnr lnr-magnifier"></span>
                  </a>
                  <div class="form-outer">
                    <button class="btn-close-form-search-header js-close-search-form-header">
                      <span class="lnr lnr-cross"></span>
                    </button>
                    <form>
                      <input placeholder="Search" />
                      <button class="search">
                        <span class="lnr lnr-magnifier"></span>
                      </button>
                    </form>
                  </div>
                </div>
                <div class="widget widget-control-header widget-shop-cart js-widget-shop-cart">
                  <a class="control" href="shop-cart.html">
                    <p class="counter">0</p>
                    <span class="lnr lnr-cart"></span>
                  </a>
                </div>
                <div class="widget widget-control-header hidden-lg hidden-md hidden-sm">
                  <a class="navbar-toggle js-offcanvas-has-events" type="button" href="#menu">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                </div>
              </aside>
            </div>
          </div>
        </div>
      </header>