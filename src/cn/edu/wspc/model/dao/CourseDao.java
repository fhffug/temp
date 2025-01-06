package cn.edu.wspc.model.dao;

import cn.edu.wspc.model.entity.Course;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class CourseDao extends BaseDao {
    //查询所有的课程
    public static List<Course> findAll(){
        String sql = "SELECT * FROM kc";
        try {
            List<Course> list = runner.query(sql, new BeanListHandler<>(Course.class));
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    //根据课程名做模糊查询
    public static List<Course> fuzzyFindByName(String name){
        String sql = "SELECT * FROM kc WHERE name LIKE ? ORDER BY cno";
        name = "%" + name +"%";
        try {
            List<Course> list = runner.query(sql, new BeanListHandler<>(Course.class),name);
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
