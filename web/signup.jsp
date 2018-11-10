<%-- 
    Document   : signup
    Created on : 05/11/2018, 16:46:59
    Author     : mateus
--%>

<%@page import="br.com.fatecpg.quiz.Bd"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/JSPF/logged.jspf" %>
<%    if (logged != null) {
        response.sendRedirect("profile.jsp");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/JSPF/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="WEB-INF/JSPF/menu.jspf" %>
        <div class="container">
            <div class="login card p-5 m-5">
                <h1 class="mb-3">Cadastro</h1>
                <%            if (request.getParameter("user1") != null) {
                        String user3 = request.getParameter("user1");
                        Usuario u = new Usuario(user3);
                        Bd.getUsers().add(u);
                        response.sendRedirect("profile.jsp");
                    }
                %>
                <form>
                  <div class="form-group">
                    <label for="name">Nome de Usuário</label>
                    <input type="text" class="form-control" name="user1" id="name" placeholder="Username">
                  </div>
                  <button type="submit" class="btn btn-primary">Enviar</button>
                </form>
            </div>
        </div>
    </body>
</html>
