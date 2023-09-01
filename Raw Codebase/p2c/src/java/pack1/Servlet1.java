package pack1;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

public class Servlet1 extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try
        {
           HttpSession s=request.getSession(true);
           if(s.isNew())
           {
               out.print("<h2>This is the First time You are visiting thie Page</h2>");
               out.print("<h2>Welcome</h2>");
           }
           else
           {
               out.print("<h2>Welcome Back</h2>");
               out.print("<h2><a href='Logout'>Logout</a></h2>");
           }
           out.println("<h2>Session ID"+s.getId()+"</h2>");
           out.println("<h2>Session Creation Time "+new Date(s.getCreationTime())+"</h2>");
           out.println("<h2>Last Accessed Time "+new Date(s.getLastAccessedTime())+"</h2>");
        }
        catch(Exception e)
        {
            
        }
    }
}
