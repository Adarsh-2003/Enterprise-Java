<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Validation Page</h1>
        
    <jsp:useBean id="obj1" class="pack.CheckerBean"></jsp:useBean>
    <jsp:setProperty property="*" name="obj1"/>
    Your Name:<jsp:getProperty name="obj1" property="name"/><br/>
    Age:<jsp:getProperty name="obj1" property="age"/><br/>
    
    <%if (obj1.validate())
      { 
    %>
        <jsp:forward page="successful.jsp"/>
    <% }
    else 
    {
        out.println("<h2>"+obj1.getError()+"</h2>");
    }
    %>
    </body>
</html>
