package pack1;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.ejb.EJB;
import pack.ConverterBeanLocal;

public class Converter extends HttpServlet 
{
    @EJB
    ConverterBeanLocal c;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Double amt=Double.parseDouble(request.getParameter("amt"));
        String t=request.getParameter("type");
        if(t.equals("r2d"))
            out.println("<h2> Rupees "+amt+" in Dolar is "+c.Rupees_To_Dollar(amt));
        if(t.equals("d2r"))
            out.println("<h2> Dolar "+amt+" in Rupees is "+c.Dollar_To_Rupees(amt));
    }

}
