<%-- 
    Document   : profile
    Created on : 05/11/2018, 15:52:12
    Author     : mateus
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.com.fatecpg.quiz.Bd"%>
<%@page import="br.com.fatecpg.quiz.Historico"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/JSPF/logged.jspf" %>
<%  if (logged == null) {
        response.sendRedirect("home.jsp");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/JSPF/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil do Usuário</title>
    </head>
    <body>

        <%@ include file="WEB-INF/JSPF/menu.jspf" %>

        <div class="bg-light text-center py-5">

            <h1><%= logged%></h1>
            <p class="h3 text-muted">Perfil de usuário</p>
            <a href="questoes.jsp" class="btn btn-primary mt-4">Realizar Quiz</a>
        </div>
        <div class="container mt-5">

            <div class="row mt-5">

                <div class="col-12 mb-4">
                    <h2 class="text-center mb-4">Últimos Testes</h2>
                    <table class="table mt-2 text-center ">
                        <thead class="bg-dark text-white">
                            <tr>
                                <th>Nome</th>
                                <th>Nota</th>
                                <th>Data</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                DateFormat df1 = new SimpleDateFormat("dd/MM/yyyy - HH:mm");
                                int limitP = 0;
                                double mediaPerfil = 0;
                                for (Historico h : Historico.sortByDate(Bd.getHistoric())) {
                                    if (h.getUser().equals(logged) && limitP <= 9) {
                                        limitP++;
                                        mediaPerfil += h.getResult();
                            %>
                            <tr>
                                <td><%= h.getUser()%></td>
                                <td><%= h.getResult()%></td>
                                <td><%= df1.format(h.getDate())%></td>
                            </tr>
                            <% }
                                }%>
                        </tbody>
                    </table>
                </div>

                <div class="col-12 mb-4">
                    <h2 class="text-center">Sua Média em Testes</h2>
                    <div class="display-1 text-center"><%= (double) mediaPerfil / (double) limitP%></div>
                </div>
            </div>
        </div>
        <%@ include file="WEB-INF/JSPF/footer.jspf" %>
    </body>
</html>
