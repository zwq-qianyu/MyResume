<%--
  Created by IntelliJ IDEA.
  User: ziyichen
  Date: 2019-01-15
  Time: 05:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="entity.BasicInfo" %>
<%@ page import="tool.Query" %>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>简历信息修改</title>
    <link rel="icon" href="./img/head.jpg">
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
            margin: 50px 0px 20px 50px;
        }
        .right-page {
            width: auto;
            margin: 20px auto;
        }
        input {
            border-radius: 5px;
            border: 1px solid #2e82ff;
            height: 32px;
            width: 240px;
            font-size: 14px;
            line-height: 20px;
            margin: 2px auto;
        }
        #headPicture {
            width: 100px;
        }
        #ensure {
            margin: 20px;
        }
        .edit_label {
            display: inline-block;
            width: 80px;
        }

    </style>
</head>
<%
//    BasicInfo baseinfo =new BasicInfo();
//    baseinfo.setUser_id("15683646990");
//    baseinfo.setBlog("http://www.runtofuture.cn");
//    baseinfo.setNickname("钟伍全");
//    baseinfo.setAge(20);
//    baseinfo.setSex("男");
//    baseinfo.setHead_pic("img/head.jpg");
//    baseinfo.setEmail("1347638091@qq.com");
//    baseinfo.setWechat("wechat");
//    baseinfo.setQq("qq");
//    baseinfo.setId_name("Eric");
//    baseinfo.setGithub("https://github.com/zwq-qianyu");
//    Query.setCustomerInfo(baseinfo);
//    System.out.println(Query.getCusInfo("15683646990").toString());
    BasicInfo customerInfo=Query.getCusInfo("15683646990");
%>
<body>

<div class="head-page">
    <ul>
        <li><a href="/MyResume/index.jsp">主页</a> </li>
    </ul>
</div>
<div class="wrapper">
    <div class="left-page">
        <img id="headPicture" src="<%=customerInfo.getHead_pic()%>" alt="我的头像">
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
                    <label class="edit_label">姓名：</label>
                    <input type="text" name="nickname" value="<%=customerInfo.getNickname()%>">
                    <br>

                    <label class="edit_label">头像：</label>
                    <input type="text" name="head_pic" value="<%=customerInfo.getHead_pic()%>">
                    <a href="/front/upload.jsp" style="font-size:18px; background-color:yellow;">上传新头像</a>
                    <br>

                    <label class="edit_label">年龄：</label>
                    <input type="text"  name="age" value="<%=customerInfo.getAge()%>">
                    <br>

                    <label class="edit_label">性别：</label>
                    <input type="text" name="sex" value="<%=customerInfo.getSex()%>">
                    <br>

                    <label class="edit_label">Email：</label>
                    <input type="text" name="email" value="<%=customerInfo.getEmail()%>">
                    <br>

                    <label class="edit_label">微信：</label>
                    <input type="text" name="wechat" value="<%=customerInfo.getWechat()%>">
                    <br>

                    <label class="edit_label">qq：</label>
                    <input type="text"  name="qq" value="<%=customerInfo.getQq()%>">
                    <br>

                    <label class="edit_label">常用ID：</label>
                    <input type="text"  name="id_name" value="<%=customerInfo.getId_name()%>">
                    <br>

                    <label class="edit_label">博客：</label>
                    <input type="text"  name="blog" value="<%=customerInfo.getBlog()%>">
                    <br>

                    <label class="edit_label">github:</label>
                    <input type="text"  name="github" value="<%=customerInfo.getGithub()%>">
                    <br>
                </p>


                <input id="ensure" type="submit" value="确认修改">
        </form>

    </div>
</div>
</body>
</html>
