<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con;
            Statement stmt;
            PreparedStatement pst;
            ResultSet rs;
            ResultSetMetaData rsmd;
            String uname=request.getParameter("txtName");
            String pass = request.getParameter("txtPass");
            
            
            try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
            }
            catch(ClassNotFoundException e)
            {       
            }
            try
            {
                String url="jdbc:mysql://localhost:3306/login";
                con=DriverManager.getConnection(url,"root","adarsh2003");
                
                
                pst=con.prepareStatement("select password from user2 where username=?");
                pst.setString(1, uname);
                rs=pst.executeQuery();
                
                if(rs.next())
                {
                    if(pass.equals(rs.getString(1)))
                    {
                        out.println("<h1>~~~ LOGIN SUCCESSFULLL ~~~ </h1>");
                    }
                    else
                    {
                        out.println("<h1>User Name not exist !!!!!</h1>");
                %>        
                        <jsp:include page="Register.html" ></jsp:include>
                <%    
                    }
                }
                else
                {
                    out.println("<h1>User Name not exist !!!!!</h1>");
                }  
                %>
                <jsp:include page="index.html" ></jsp:include>
                <%
            }
                
            
            catch(SQLException e)
            {
                
            }
        %>
    </body>
</html>
