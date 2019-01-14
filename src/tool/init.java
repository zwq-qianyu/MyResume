package tool;

import entity.BasicInfo;

public class init {
    public static void main(String[] args){

        BasicInfo baseinfo =new BasicInfo();
        baseinfo.setUser_id("15683646990");
        System.out.println(baseinfo.toString());
        baseinfo.setBlog("http://www.runtofuture.cn");
        baseinfo.setNickname("钟伍全");
        baseinfo.setAge(20);
        baseinfo.setSex("男");
        baseinfo.setHead_pic("/img/1.png");
        baseinfo.setGithub("https://github.com/zwq-qianyu");
        System.out.println(baseinfo);
        Query.setCustomerInfo(baseinfo);
//        System.out.println(Query.getCusInfo("15683646990").toString());
        BasicInfo customerInfo=Query.getCusInfo("15683646990");
    }
}
