package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import entity.BasicInfo;

@WebServlet("/updateInfo")
public class updateInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BasicInfo baseinfo=new BasicInfo(
//                request.getParameter("phone"),
                "15683646990",
                new String(request.getParameter("nickname").getBytes("ISO-8859-1"),"UTF-8"),
                new String(request.getParameter("sex").getBytes("ISO-8859-1"),"UTF-8"),
                Integer.parseInt(request.getParameter("age")),
                new String(request.getParameter("head_pic").getBytes("ISO-8859-1"),"UTF-8"),
                new String(request.getParameter("email").getBytes("ISO-8859-1"),"UTF-8"),
                new String(request.getParameter("wechat").getBytes("ISO-8859-1"),"UTF-8"),
                new String(request.getParameter("qq").getBytes("ISO-8859-1"),"UTF-8"),
                new String(request.getParameter("id_name").getBytes("ISO-8859-1"),"UTF-8"),
                new String(request.getParameter("blog").getBytes("ISO-8859-1"),"UTF-8"),
                new String(request.getParameter("github").getBytes("ISO-8859-1"),"UTF-8")
        );
        System.out.println(baseinfo.toString());
        tool.Query.setCustomerInfo(baseinfo);
        response.sendRedirect("/MyResume/index.html");
        return;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
