<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Employee Record Update</h1>
<%
 int eno=Integer.parseInt(request.getParameter("txtEno"));
 String name=request.getParameter("txtName");
 int age = Integer.parseInt(request.getParameter("txtAge"));
 int sal = Integer.parseInt(request.getParameter("txtSal"));
 try
 {
 Class.forName("com.mysql.cj.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/employee";
 Connection con = DriverManager.getConnection(url,"root","adarsh2003");
 PreparedStatement stmt = con.prepareStatement("select * from emp where empid=?");
 stmt.setInt(1, eno);
 ResultSet rs = stmt.executeQuery();
 if(rs.next())
 {
 out.println("<h1>~~~ Employee "+name+" Exist ~~~ </h1>");
 PreparedStatement pst1= con.prepareStatement("update emp set salary=? where empid=?");
 PreparedStatement pst2= con.prepareStatement("update emp set age=? where empid=?");
 pst1.setInt(1, sal); 
 pst1.setInt(2, eno);
 pst2.setInt(1, age);
 pst2.setInt(2, eno);
 pst1.executeUpdate(); 
 pst2.executeUpdate();
 }
 else
 {
 out.println("<h1>Employee Record not exist !!!!!</h1>");
 }
 }
 catch(Exception e)
 {
     out.println(e);
 }
 %>
</body>
</html>
