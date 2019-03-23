<%--
  Created by IntelliJ IDEA.
  User: ziyichen
  Date: 2019-01-15
  Time: 06:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%
    String user_id = request.getParameter("user_id");

%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>个人头像上传</title>
    <style type="text/css">
        body {
            background: #F9F8E8;
        }
        .mainbody {
            width: 800px;
            margin: 50px auto;
            padding: 20px;
            border-radius: 5px;
            background: #29B6F6;
            text-align: center;
        }
        h1 {
            font-weight: bold;
        }
        form {
            margin: 50px;
        }
        #submit_button {
            display: inline-block;
            width: 180px;
            height: 40px;
            border-radius: 4px;
            background: #FFFFFF;
            border: none;
            margin-top: 30px;
            font-size: 16px;
        }
    </style>
</head>
<body>
<div class="mainbody">
    <h1>上传我的个人头像</h1>
    <form method="post" action="/MyResume/UploadServlet?user_id=<%=user_id%>" enctype="multipart/form-data">
        选择一个文件:
        <input type="file" name="uploadFile" />
        <br/><br/>
        <input type="submit" value="上传" id="submit_button" />
    </form>
</div>
</body>
</html>
