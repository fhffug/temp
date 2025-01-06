package cn.edu.wspc.model;

import java.util.HashMap;
import java.util.Map;

public class AdminData {
    //使用Map集合存储管理员的用户名和密码，key为用户名，value为密码
    private static Map<String, String> adminList = new HashMap<>();
    static {
        adminList.put("admin","123456");
        adminList.put("slj","987654");
    }

    public static boolean validateAdmin(String username, String password){
        if(adminList.containsKey(username)){
            if(adminList.get(username).equals(password)){
                return true;
            }
        }
        return false;
    }
}
