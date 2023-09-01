<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <b>The sum of 2 number is</b> ${param.txt1+param.txt2} <br/>
        <b>The difference of 2 number is</b> ${param.txt1-param.txt2}<br/>
        <b>The product of 2 number is</b> ${param.txt1*param.txt2}<br/>
        <b>The quotient of 2 number is</b> ${param.txt1/param.txt2}<br/>
        <b>The remainder of 2 number is</b> ${param.txt1%param.txt2}<br/>
    </body>
</html>
