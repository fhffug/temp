<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title></title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
  <script src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container mt-3">
  <h2>课程列表</h2>
  <div class="form-inline">
    <div class="d-flex justify-content-center">
      <label for="course" class="col-form-label text-right">按课程名模糊查询课程：</label>
      <input type="text" class="form-control mr-sm-2" id="course" placeholder="请输入课程名" name="course" value=""/>
      <input type="button" id="search" class="btn btn-info" value="查询" />
    </div>
  </div>
  <table class="table table-hover table-bordered">
    <tr class="table-dark">
      <th>课程号</th>
      <th>课程名</th>
      <th>开课学期</th>
      <th>学时</th>
      <th>学分</th>
    </tr>
    <c:forEach items="${list}" var="kc">
      <tr>
        <td>${kc.cno}</td>
        <td>${kc.name}</td>
        <td>${kc.semester}</td>
        <td>${kc.period}</td>
        <td>${kc.credit}</td>
      </tr>
    </c:forEach>

  </table>
</div>
<script>
  $(function(){
    $("#search").click(function(){
      $.ajax({
        type:"post",
        url:"${pageContext.request.contextPath}/admin/kcList",
        data:{course:$("#course").val()},
        dataType:"json",
        success:function (data){
          //清除所有的课程信息
          $("tr:not(:first)").remove();
          let html = "";
          for(let i in data){
            html += "<tr>";
            for(let key in data[i]){
              html+="<td>"+data[i][key]+"</td>";
            }
            html += "</tr>";
          }
          $("table").append(html);
        },
        error:function(){
          alert("请求失败！");
        }
      });
    });
  });
</script>
</body>
</html>

