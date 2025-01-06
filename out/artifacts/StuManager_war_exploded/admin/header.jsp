<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--header-->
<nav class="navbar navbar-inverse navbar-static-top" style="margin-bottom: 0">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">教务管理系统</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="${pageContext.request.contextPath}/admin/default.jsp">首页</a></li>
        <li><a href="${pageContext.request.contextPath}/admin/xsList">学生管理</a></li>
        <li><a href="${pageContext.request.contextPath}/admin/kcList">课程管理</a></li>
      </ul>
    </div>
  </div>
</nav>
<!--//header-->
