<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <head>
    <title>category</title>

    <style type="text/css">
      .row1{
        background:url(${pageContext.request.contextPath}/picture/s.jpg);
        height:62px;

      }
    </style>
  </head>


          <div class="row1">
            <div class="header-1-inner">
              <a class="brand-logo animsition-link" href="index.html">
                <img class="img-responsive" src="${pageContext.request.contextPath}/picture/logo.png" alt="" />
              </a>
              <nav>
                <ul class="menu hidden-xs">
                 <s:iterator var="c" value="#session.cList">
                  <li>
                    <a href="#"><s:property value="#c.cname"/></a>
                  </li>
                  </s:iterator>
                </ul>
              </nav>
            </div>
          </div>

