package pack1;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MarksServlet extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        try
        { 
            out.print("<html><body>");
            int total=Integer.parseInt(request.getParameter("total"));
            int marks=0;
            for(int i=1; i<=total; i++)
            {
                String sel=request.getParameter(new Integer(i).toString());
                String ans=request.getParameter("ans"+i);
                if (sel.equals(ans)) 
                    marks++;
            }
            out.println("Total Marks : "+marks);
            out.print("</body></html>");
        }
        catch(Exception e)
        {
            out.println("ERROR "+e.getMessage());
        }
    }
}
