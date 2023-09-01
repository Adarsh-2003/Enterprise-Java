package FileServletApp;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

@MultipartConfig
public class FileUploadServlet extends HttpServlet 
{
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        String path = request.getParameter("destination");
        Part filePart=request.getPart("file");
        String sfilePart=request.getPart("file").toString();
        out.print("<br>filePart: "+sfilePart);
        String filename = filePart.getSubmittedFileName().toString();
        out.print("<br><br><hr> file name: "+filename);
        OutputStream os=null;
        InputStream is=null;
        try
        {
            os=new FileOutputStream(new File(path+File.separator +filename));
            is=filePart.getInputStream();
            int read=0;
            while((read=is.read())!=-1)
            {
                os.write(read);
            }
            out.println("<br>File Uploaded Successfully..!!!");
        }
        catch(FileNotFoundException e)
        {
         out.print(e);
        }
    }

   

}
