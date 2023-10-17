<%-- 
    Document   : login
    Created on : Oct 17, 2023, 10:13:31 PM
    Author     : toanl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" method="post">
            Username: <input type="text" name="user"> <br></br>
            Password: <input type="password" name="pw"> <br></br>
            <input type="submit" value="Login">
            </form>
            <% 
               
            String k=(String)session.getAttribute("msg");
             if(k!=null){
            
            %>
            <h3 style="color: red"><%= k%></h3>
                <% 
                }
                %>

    </body>
</html>
