package pack;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class DownloadServlet extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out=response.getWriter();
      String filename=request.getParameter("txt1");
      String filepath="E:\\Drive";
      response.setContentType("Application/OCTET-STREAM");
      response.setHeader("Content.Disposition","attachment.filename=\"" +filename+ "\"");
      FileInputStream fileInputStream=new FileInputStream(filepath +filename);
      int i;
      while((i=fileInputStream.read())!=-1);
      {
          out.write(i);
      }
      fileInputStream.close();
      out.close();
    }
}