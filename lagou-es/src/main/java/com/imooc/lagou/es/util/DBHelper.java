package com.imooc.lagou.es.util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author: Mock
 * @date: 2022/8/15 9:49
 * @Description: 操作数据库
 * @Sign 一入码门深似海 头秃自然千金来
 */
public class DBHelper {
    public static final String url = "jdbc:mysql://192.168.0.14:3306/elasticsearch?useUnicode=true&characterEncoding=utf-8&serverTimezone=Asia/Shanghai";
    public static final String name = "com.mysql.cj.jdbc.Driver";
    public static final String user = "root";
    public static final String password = "123456";
    private  static Connection  connection = null;

    public  static Connection getConn(){
        try {
            Class.forName(name);
            connection = DriverManager.getConnection(url,user,password);
        }catch (Exception e){
            e.printStackTrace();
        }
        return  connection;
    }
}
