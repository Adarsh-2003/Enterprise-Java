<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date,java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Methods of session implicit object</h1>
        <%
            String name=(String)session.getAttribute("user");
            out.print("<h2>Welcome "+name+"<br/></h2>");
            out.println("<h2>Seesion ID is: "+session.getId()+"<br/></h2>");
            out.println("<h2>Session Creation time is: "+new Date(session.getCreationTime())+"<br/></h2>");
            out.println("<h2>Session Last Accessed time is: "+new Date(session.getLastAccessedTime())+"<br/></h2>");
            out.println("<h2>Session is New ? "+session.isNew()+"<br/></h2>");
        %>
        <h3>Methods of response implicit object</h3>
        <%
            //response is a object of HttpServletResponse
            out.println("Current status code of this response "+response.getStatus()+"<br/>");
            PrintWriter u1=response.getWriter();
            u1.println("PrintWriter object is created<br/>");
            
        %>   
        <a href="Go.jsp">Next Page</a>
    </body>
</html>
