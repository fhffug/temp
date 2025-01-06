package cn.edu.wspc.servlet;

import cn.edu.wspc.model.dao.CourseDao;
import cn.edu.wspc.model.entity.Course;
import net.sf.json.JSONArray;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "KcListServlet", value = "/admin/kcList")
public class KcListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Course> list = CourseDao.findAll();
        request.setAttribute("list",list);
        request.getRequestDispatcher("kcList.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String course = request.getParameter("course");
        List<Course> list = CourseDao.fuzzyFindByName(course);
        JSONArray jsonArray = JSONArray.fromObject(list);
        response.setContentType("application/json;charset=utf-8");
        response.getWriter().print(jsonArray);
    }
}
