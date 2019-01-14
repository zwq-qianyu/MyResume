package tool;

import config.myConfig;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.HashMap;

public class DataBase {

    public static Connection connection =null ;
    public static  HashMap<String,Connection> MAP =null ;
    //加载数据库驱动
    static {            // static 静态只执行一次，防止反复打开数据库
        try {
            Class.forName(myConfig.DRIVER);
            MAP = new HashMap<String, Connection>();
            connection = DriverManager.getConnection(myConfig.URL, myConfig.USERNAME, myConfig.PASSWORD);
            MAP.put(myConfig.USERNAME, connection);
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }

    public static void disConnection() {
        connection = null;
    }


    //  建立并返回数据库连接
    public static Connection getConnection() throws Exception {
        //如果之前未连接
        if (connection == null) {
            connection = DriverManager.getConnection(myConfig.URL, myConfig.USERNAME, myConfig.PASSWORD);
            return connection;
        }
        return connection;
    }
    // 设置数据库驱动
    public static void setConnection(Connection connection) throws Exception {

        DataBase.connection = connection ;
    }

}
