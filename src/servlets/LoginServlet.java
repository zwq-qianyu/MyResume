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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(request.toString());
        String passwd = request.getParameter("password");
        String user_id = request.getParameter("username");
        System.out.println("12345");
        System.out.println(passwd);

//        if(GCON.phonePassword.equals(user_id)){
//            System.out.println("登陆成功");
//            response.sendRedirect("/admin.html");
//        }else{
//            System.out.println("登陆失败");
//            response.sendRedirect("/index.html");
//        }

//        PrintWriter out = response.getWriter();
//        request.setCharacterEncoding("utf-8");
//        response.setContentType("text/html;charset=utf-8");
//        response.setCharacterEncoding("utf-8");
//        String str = "{'code':'200','msg':'成功','success':'true'}";
//        out.print(str);
//        out.flush();
//        out.close();

        response.sendRedirect("/Myresume/editinfo.jsp");
        return;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
