package tool;
import entity.*;

import java.sql.*;
import java.util.ArrayList;

import static java.lang.Integer.parseInt;

public class Query {
    /**
     * 查询用户基本信息
     * @param user_id
     * @return
     */
    public static BasicInfo getCusInfo(String user_id) {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            connection = DataBase.getConnection();

            statement = connection.createStatement();
            String sql = "select * from baseinfo where user_id='" + user_id + "'";

            //获取结果数据集
            resultSet = statement.executeQuery(sql);

            System.out.println("resultSet:"+resultSet);
            while (resultSet.next()) {
                BasicInfo cusinfo = new BasicInfo(
                        resultSet.getString(2),
                        resultSet.getString(3),
                        parseInt(resultSet.getString(4)),
                        resultSet.getString(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getString(8),
                        resultSet.getString(9),
                        resultSet.getString(10),
                        resultSet.getString(11)
                );
                return cusinfo;
            }

        } catch (Exception exception) {
            exception.printStackTrace();
        }
//        System.out.println("查询失败！！！");
        return null;
    }

    public static void setCustomerInfo(BasicInfo customerInfo){
        Connection connection = null;
        ResultSet resultSet = null;

        try {
            delCustomerInfo(customerInfo.getUser_id());   // 先删除
            connection = DataBase.getConnection();
            Statement statement=connection.createStatement();
            System.out.println("开始插入。。。。。");
            String sql = "insert into baseInfo values('"
                    +customerInfo.getUser_id()+"','"
                    +customerInfo.getNickname()+"','"
                    +customerInfo.getSex()+"',"
                    +customerInfo.getAge()+",'"
                    +customerInfo.getHead_pic()+"','"
                    +customerInfo.getEmail()+"','"
                    +customerInfo.getWechat()+"','"
                    +customerInfo.getQq()+"','"
                    +customerInfo.getId_name()+"','"
                    +customerInfo.getBlog()+"','"
                    +customerInfo.getGithub()+"')";
            System.out.println("sql:"+sql);
            statement.execute(sql);
//            statement.execute("insert into baseInfo values('15683646990','钟伍全','男',20,'','1347638091@qq.com','wechat','1347638091','Eric','blog','https://github.com/zwq-qianyu')");
            System.out.println("插入成功。。。。。");
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }

    // 删除数据函数
    public static void delCustomerInfo(String user_id){
        Connection connection = null;
        ResultSet resultSet = null;

        try {
            connection = DataBase.getConnection();
            Statement statement=connection.createStatement();
            statement.execute("DELETE from baseinfo where user_id='"+user_id+"'");
//            statement.close();
//            connection.close();
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }
}
