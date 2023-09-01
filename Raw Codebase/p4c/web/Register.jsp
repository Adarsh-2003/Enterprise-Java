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
                e.getMessage();
            }
            try
            {
                String url="jdbc:mysql://localhost:3306/login";
                con=DriverManager.getConnection(url,"root","adarsh2003");
                 
                
                pst = con.prepareStatement("insert into user2 values (?,?)");
                pst.setString(1, uname); 
                pst.setString(2, pass);
                
                int r=pst.executeUpdate();
                if(r==1)
                {
                    out.println("<b>Record is updated successfully</b>");
                    out.println("<h1><a href='Login.html'>Click here to go back</a></h1>");
                }
                else
                {
                    out.println("Registration Failed !!!!");
                    out.println("<h1><a href='Register.html'>Click here to go back</a></h1>");
                }
            }
            catch(SQLException e)
            {
                
            }
            %>
    </body>
</html>
