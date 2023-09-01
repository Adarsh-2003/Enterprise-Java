<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>request Implicit Object</h1>
        <%
            //request is a object of HttpServeletRequest
            String str1=request.getParameter("txt1");
            out.println("<h3>Hi "+str1+" Welcome to the world of JSP</h3>");
            
            String str2=request.getContextPath();
            out.println("<h3>Context path is:"+str2+"</h3>");
            
            String str3=request.getMethod();
            out.println("<h3>Method name is:"+str3+"</h3>");
        %>   
        <h1>Methods of out implicit objects</h1>
        <%
            out.println("JSP stands for Java Server Page<br/>");
            out.newLine();
            out.println("Printing boolean value<br/>");
            out.println(false+"<br/>");
            char ch[]={'H','e','l','l','o'};
            out.println("Printing Array of Characters<br/>");
            out.println(ch);
         %>
         <h1>Methods of session implicit objects</h1>
         <%
            //HttpSession session=request.getSession();
            session=request.getSession(true);
            out.println("Session is new ?"+session.isNew()+"<br/>");
            out.println("Session created time "+new Date(session.getCreationTime()));
            session.setAttribute("user",str1);
         %>
         <a href="Welcome.jsp">Next Page</a>
    </body>
</html>
