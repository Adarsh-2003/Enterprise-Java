package pack1;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            try(PrintWriter out = response.getWriter())
            {
              HttpSession  s=request.getSession(false);
                s.invalidate();
                response.sendRedirect("Servlet1");
            }
    }


}
