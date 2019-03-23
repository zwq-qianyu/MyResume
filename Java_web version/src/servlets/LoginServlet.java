package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.github.qcloudsms.SmsSingleSender;
import com.github.qcloudsms.SmsSingleSenderResult;
import com.github.qcloudsms.httpclient.HTTPException;
import org.json.JSONException;
import config.myConfig;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String passwd = request.getParameter("password");
        String user_id = request.getParameter("username");
        System.out.println(passwd);
        PrintWriter out = response.getWriter();
        if((passwd!="") && (myConfig.phonePassword.equals(passwd))){
            System.out.println("登陆成功");
            String result = "success";
            out.println(result);
            response.sendRedirect("/MyResume/editinfo.jsp");
            return;
        }else{
            String result = "fail login";
            out.println(result);
//            response.sendRedirect("/MyResume/index.html");
//            return;
        }
    }
}
