<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
</head>
<jsp:include page="header.jsp"></jsp:include>
<div class="container mt-3">
    <h2>学生列表</h2>
    <form method="post" class="form-inline">
        <div class="d-flex justify-content-center">
            <label for="name" class="col-form-label text-right">按姓名模糊查询学生：</label>
            <input type="text" class="form-control mr-sm-2" id="name" placeholder="请输入学生姓名" name="name" value="${name}"/>
            <input type="submit" class="btn btn-info" value="查询" />
        </div>
    </form>
    <table class="table table-hover table-bordered">
        <tr class="table-dark">
            <th>学号</th>
            <th>姓名</th>
            <th>专业名</th>
            <th>性别</th>
            <th>出生时间</th>
            <th>总学分</th>
            <th>学生状态</th>
        </tr>
        <c:forEach items="${list}" var="xs">
            <tr>
                <td>${xs.snum}</td>
                <td>${xs.name}</td>
                <td>${xs.major}</td>
                <td>${xs.sex==1?"男":"女"}</td>
                <td>${xs.birthday}</td>
                <td>${xs.credit}</td>
                <td>${xs.state}</td>
            </tr>
        </c:forEach>


    </table>
</div>
</body>
</html>
