package config;

public class myConfig {
    // 短信应用SDK AppID
    public static final int appid = 1400178108; // 1400开头

    // 短信应用SDK AppKey
    public static final String appkey = "15fc9e31ea2af96c2b5ecf04ab8cfaea";

    // 需要发送短信的手机号码
    public static final String[] phoneNumbers = {"15683646990"};

    // 短信模板ID，需要在短信应用中申请
    public static final int templateId = 7839; // NOTE: 这里的模板ID`7839`只是一个示例，真实的模板ID需要在短信控制台中申请
    //templateId7839对应的内容是"您的验证码是: {1}"
    // 签名
    public static final String smsSign = "腾讯云"; // NOTE: 这里的签名"腾讯云"只是一个示例，真实的签名需要在短信控制台中申请，另外签名参数使用的是`签名内容`，而不是`签名ID`


    //    数据库连接信息
    //数据库连接信息
    public static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    //登录时默认使用 root 用户验证登录名与密码是否正确
    public static String USERNAME = "root";
    // 密码
    public static String PASSWORD = "1999.04.25";

    // public static final String URL = "jdbc:mysql://localhost:3306/new?autoReconnect=true&useSSL=false&useUnicode=true&charaterEncoding=UTF";
    public static final String URL = "jdbc:mysql://localhost:3306/resume?useSSL=false&useUnicode=true&charaterEncoding=UTF";

    // 用来暂存手机验证码
    public static String phonePassword="123456";
}
