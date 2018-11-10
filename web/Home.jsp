<%-- 
    Document   : home
    Created on : 04/11/2018, 16:54:21
    Author     : usuario
--%>

<%@page import="br.com.fatecpg.quiz.Historico"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="br.com.fatecpg.quiz.Bd"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/JSPF/logged.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/JSPF/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <%@ include file="WEB-INF/JSPF/menu.jspf" %>
        <div class="container py-5">
            <div class="row mt-2 py-5">

                <div class="col-12 col-sm-12 col-md-6 col-lg-6 mb-4">
                    <%@ include file="WEB-INF/JSPF/ultimos.jspf" %>
                </div>

                <div class="col-12 col-sm-12 col-md-6 col-lg-6 mb-4">
                    <%@ include file="WEB-INF/JSPF/ranking.jspf" %>
                </div>
            </div>
        </div>
        <%@ include file="WEB-INF/JSPF/footer.jspf" %>
    </body>
</html>