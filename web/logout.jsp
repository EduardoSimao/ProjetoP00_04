<%-- 
    Document   : logout
    Created on : 05/11/2018, 15:53:02
    Author     : mateus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    session.invalidate();
    response.sendRedirect("home.jsp");
    
%>