<%-- 
    Document   : welcome
    Created on : Oct 17, 2023, 10:28:28 PM
    Author     : toanl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Account"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <% 
               
            Account a=(Account)session.getAttribute("account");
                
            
            %>
            <h1>Hello <%= a.getUser()%>! Welcome to my page</h1>
               
    </body>
</html>
