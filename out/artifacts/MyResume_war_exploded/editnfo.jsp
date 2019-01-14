<%--
  Created by IntelliJ IDEA.
  User: 11
  Date: 2018/5/10
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="entity.BasicInfo" %>
<%@ page import="tool.Query" %>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
    <style>
        body{
            background: #F9F8E8;
        }
        .wrapper {
            display: flex;
            width: 1280px;
            margin: 20px auto;
            background: #29B6F6;
        }
        .left-page {
            width: 300px;
            margin: 20px;
        }
        .right-page {
            width: auto;
            margin: 20px auto;
        }
        input {
            border-radius: 5px;
            border: 1px solid #2e82ff;
            height: 26px;
            width: 200px;
            font-size: 14px;
            line-height: 20px;
            margin: 2px auto;
        }

    </style>
</head>
<%
    BasicInfo baseinfo =new BasicInfo();
    baseinfo.setUser_id("15683646990");
    baseinfo.setBlog("http://www.runtofuture.cn");
    baseinfo.setNickname("钟伍全");
    baseinfo.setAge(20);
    baseinfo.setSex("男");
    baseinfo.setHead_pic("/img/1.png");
    baseinfo.setEmail("1347638091@qq.com");
    baseinfo.setWechat("wechat");
    baseinfo.setQq("qq");
    baseinfo.setId_name("Eric");
    baseinfo.setGithub("https://github.com/zwq-qianyu");
    Query.setCustomerInfo(baseinfo);
//    System.out.println(Query.getCusInfo("15683646990").toString());
    BasicInfo customerInfo=Query.getCusInfo("15683646990");
%>
<body>

<div class="head-page">
    <ul>
        <li><a href="/MyResume/index.html">主页</a> </li>
    </ul>
</div>
<div class="wrapper">
    <div class="left-page">
        <img id="pic1" src="<%=customerInfo.getHead_pic()%>" alt="gakki">
        <p id="myname"><%=customerInfo.getNickname()%></p>
        <div class="myinfo">
            <p>年龄：<%=customerInfo.getAge()%></p>
            <p>性别：<%=customerInfo.getSex()%></p>
            <p>博客：<a href="<%=customerInfo.getBlog()%>">runtofuture.cn</a></p>
            <p>github: <a href="<%=customerInfo.getGithub()%>">zwq-qianyu</a></p>
            <p>联系方式: <%=customerInfo.getEmail()%></p>
        </div>
    </div>

    <div class="right-page">
        <form method="post" action="/MyResume/updateInfo">
                <h1>基本信息</h1>
                <p class="right_content">
                    姓名：
                    <input type="text" name="nickname" value="<%=customerInfo.getNickname()%>">
                    <br>
                    头像：
                    <input type="text" name="head_pic" value="<%=customerInfo.getHead_pic()%>">
                    <a href="/front/upload.jsp" style="font-size:18px; background-color:yellow;">上传新头像</a>
                    <br>
                    年龄：
                    <input type="text"  name="age" value="<%=customerInfo.getAge()%>">
                    <br>
                    性别：
                    <input type="text" name="sex" value="<%=customerInfo.getSex()%>">
                    <br>

                    Email：
                    <input type="text" name="email" value="<%=customerInfo.getEmail()%>">
                    <br>
                    wechat：
                    <input type="text" name="wechat" value="<%=customerInfo.getWechat()%>">
                    <br>

                    qq：
                    <input type="text"  name="qq" value="<%=customerInfo.getQq()%>">
                    <br>
                    id_name:
                    <input type="text"  name="id_name" value="<%=customerInfo.getId_name()%>">
                    <br>

                    博客：
                    <input type="text"  name="blog" value="<%=customerInfo.getBlog()%>">
                    <br>
                    github:
                    <input type="text"  name="github" value="<%=customerInfo.getGithub()%>">
                    <br>


                </p>
                <%--<p class="right-title1">个人简历</p>--%>
                <%--<textarea name="longInfo"><%=customerInfo.getLongInfo()%></textarea>--%>
                <%--<p class="right-title1">教育经历</p>--%>
                <%--<textarea name="learningExper"><%=customerInfo.getLearningExper()%></textarea>--%>
                <%--<p class="right-title1">专利及论文</p>--%>
                <%--<textarea name="papers"><%=customerInfo.getPapers()%></textarea>--%>
                <%--<p class="right-title1">获奖经历</p>--%>
                <%--<textarea name="awards"><%=customerInfo.getAwards()%></textarea>--%>
                <br>
                <br>
                <input id="ensure" type="submit" value="确认修改">
        </form>

    </div>
</div>
</body>
</html>
