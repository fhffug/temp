package cn.edu.wspc.servlet;

import cn.edu.wspc.model.dao.CourseDao;
import cn.edu.wspc.model.dao.StudentDao;
import cn.edu.wspc.model.entity.Course;
import cn.edu.wspc.model.entity.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "XsListServlet", value = "/admin/xsList")
public class XsListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Student> list = StudentDao.findAll();
        request.setAttribute("list",list);
        request.getRequestDispatcher("xsList.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        List<Student> list = StudentDao.fuzzyFindByName(name);
        request.setAttribute("list",list);
        request.setAttribute("name",name);
        request.getRequestDispatcher("xsList.jsp").forward(request,response);
    }
}
