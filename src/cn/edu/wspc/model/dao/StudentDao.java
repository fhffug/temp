package cn.edu.wspc.model.dao;

import cn.edu.wspc.model.entity.Course;
import cn.edu.wspc.model.entity.Student;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class StudentDao extends BaseDao {
    public static List<Student> findAll(){
        String sql = "SELECT * FROM xs";
        try {
            List<Student> list = runner.query(sql, new BeanListHandler<>(Student.class));
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    public static List<Student> fuzzyFindByName(String name){
        String sql = "SELECT * FROM xs WHERE name LIKE ? ORDER BY snum";
        name = "%" + name +"%";
        try {
            List<Student> list = runner.query(sql, new BeanListHandler<>(Student.class),name);
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
