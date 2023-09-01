
package pack1;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class Login extends HttpServlet 
{
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     response.setContentType("text/html");
     PrintWriter out= response.getWriter();
     String n=request.getParameter("UserName");
     String p=request.getParameter("UserPass");
     if(p.equals("servlet")){
         RequestDispatcher rd=request.getRequestDispatcher("WelcomeServlet");
         rd.forward(request, response);
     }
     else{
         out.print("Sorry UserName or Password Error");
         RequestDispatcher rd=request.getRequestDispatcher("/index.html");
         rd.include(request, response);
         
     }
    }


}
