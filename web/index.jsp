<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>教务管理系统登录</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
</head>
<body>
<div class="container jumbotron">
  <div class="row">
    <div class="col-md-4 col-md-offset-4">
      <form class="form-container" action="${pageContext.request.contextPath}/login" method="post">
        <h2>教务管理系统登录</h2>
        <div class="form-group">
          <label>账号</label>
          <input type="text" class="form-control" name="username"  placeholder="请输入账号">
        </div>
        <div class="form-group">
          <label>登录密码</label>
          <input type="password" class="form-control" name="password"  placeholder="请输入密码">
        </div>

        <c:if test="${!empty errorMsg}">
          <div class="form-group">
            <p class="alert-danger">${errorMsg}</p>
          </div>
        </c:if>

        <button type="submit" class="btn btn-info btn-block" >登录</button>
      </form>
    </div>
  </div>
</div>
</body>
</html>

