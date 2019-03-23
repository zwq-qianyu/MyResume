package entity;

public class BasicInfo {
    public BasicInfo() {

    }

    // 手机号--用户ID
    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    private String user_id;


    // 1、昵称
    private String nickname;
    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }


    // 2、密码
//    private String password;
//    public String getPassword() {
//        return password;
//    }
//
//    public void setPassword(String password) {
//        this.password = password;
//    }


    // 3、性别
    private String sex;
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }


    // 4、头像图片链接
    private String head_pic;
    public String getHead_pic() {
        return head_pic;
    }

    public void setHead_pic(String head_pic) {
        this.head_pic = head_pic;
    }


    // 5、年龄
    private int age;
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }


    // 6、邮箱
    private String email;
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    // 7、微信
    private String wechat;
    public String getWechat() {
        return wechat;
    }

    public void setWechat(String wechat) {
        this.wechat = wechat;
    }


    // 8、QQ
    private String qq;
    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }


    // 9、常用ID名
    private String id_name;
    public String getId_name() {
        return id_name;
    }

    public void setId_name(String id_name) {
        this.id_name = id_name;
    }


    // 10、博客地址
    private String blog;
    public String getBlog() {
        return blog;
    }

    public void setBlog(String blog) {
        this.blog = blog;
    }


    // 11、GitHub链接
    private String github;
    public String getGithub() {
        return github;
    }

    public void setGithub(String github) {
        this.github = github;
    }



    // 构造函数2
    public BasicInfo(String nickname, String sex, int age, String head_pic, String email, String wechat, String qq, String id_name,
                        String blog, String github) {
        this.nickname = nickname;
        this.sex = sex;
        this.age = age;
        this.head_pic = head_pic;
        this.email = email;
        this.wechat = wechat;
        this.qq = qq;
        this.id_name = id_name;
        this.blog = blog;
        this.github = github;
//        this.password = password;
    }

    // 构造函数3
    public BasicInfo(String user_id, String nickname, String sex, int age, String head_pic, String email, String wechat, String qq, String id_name,
                     String blog, String github) {
        this.user_id = user_id;
        this.nickname = nickname;
        this.sex = sex;
        this.age = age;
        this.head_pic = head_pic;
        this.email = email;
        this.wechat = wechat;
        this.qq = qq;
        this.id_name = id_name;
        this.blog = blog;
        this.github = github;
//        this.password = password;
    }

    @Override
    public String toString() {
        return "CustomerInfo{" +
                "user_id='" + user_id +'\'' +
                ", nickname='" + nickname + '\'' +
                ", sex='" + sex + '\'' +
                ", age='" + age + '\'' +
                ", head_pic='" + head_pic + '\'' +
                ", email='" + email + '\'' +
                ", wechat='" + wechat + '\'' +
                ", qq=" + qq +
                ", id_name='" + id_name + '\'' +
                ", blog='" + blog + '\'' +
                ", github='" + github + '\'' +
                '}';
    }
}
