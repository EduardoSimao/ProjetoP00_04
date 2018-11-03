<%-- 
    Document   : logout
    Created on : 03/11/2018, 14:12:07
    Author     : Positivo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>            
        <%
        //Destroi as sessions
        session.invalidate();
        out.println("Você saiu com sucesso do sistema. <script>document.location.href='Home.jsp';</script>");
        %>
    </body>
</html>
