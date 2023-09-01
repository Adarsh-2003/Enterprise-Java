package pack;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class VisitServlet extends HttpServlet {
    static int count =1;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try
        {
            String c = String.valueOf(count);
            Cookie ck =new Cookie("Visit" ,c);
            response.addCookie(ck);
            int j = Integer.parseInt(ck.getValue());
            if(j==1)
                out.println("<h1>Welcome to the World of Java Cookies</h1>");
            else
            {
           out.print("<h1>You have Visited "+count+" times </h1>");
            }
            count++;
        }
        catch(NumberFormatException e)
        {
            out.println(e);
        }
    }

}
