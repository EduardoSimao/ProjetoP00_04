<%-- 
    Document   : test.jsp
    Created on : 08/11/2018, 22:23:31
    Author     : loren
--%>

<%@page import="br.com.fatecpg.quiz.Question"%>
<%@page import="br.com.fatecpg.quiz.Bd"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teste - WebQuiz</title>
        <%@include file="WEB-INF/links.jspf" %>
        <style>
            h1,h2{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/NavBar.jspf" %>

        <h1>Quiz</h1>
        <%if (request.getParameter("sendTest") != null) {%>
        <%
            int sum = 0;
            String color;
            for (Question q : Bd.getBioTest()) {
                String userAnswer = request.getParameter(q.getTitle());
                if (userAnswer != null && userAnswer.equals(q.getAnswer())) {
                    sum++;
                }
            }
            double grade = 100 * (((double) (sum)) / ((double) (Bd.getBioTest().size())));
            if (grade >= 60) {
                color = "green";
            } else {
                color = "red";
            }
        %>
        <div class="row">
            <div class="d-flex mx-auto col-4 border border-info" style=" border-width:5px !important">
                <h1>Resultado do teste: <p style="color:<%=color%>"><%= grade%><span style="color:black">/100.00</span></p></h1>
            </div>

        </div>
        <div class="row">
            <div class="mx-auto" style="margin-top:-20px;z-index:5;">
                <a class="btn btn-primary" href="./">Home</a>
                <a class="btn btn-info" href="./perfil.jsp">Perfil</a>
            </div>
        </div>

        <%}%>
        <h2>Test</h2>

        <div class="row">
            <div class="d-flex mx-auto">           
                <div class="jumbotron">
                    <form>
                        <% int n = 0;
                            for (Question q : Bd.getBioTest()) {
                                n++;%>
                        <div class="form-group">

                            <h4><%=n%>.)<%=q.getTitle()%></h4>
                            <%for (int i = 0; i < q.getAlternatives().length; i++) {%>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="<%= q.getTitle()%>" value="<%= q.getAlternatives()[i]%>" />
                                <%=q.getAlternatives()[i]%>

                            </div>
                            <%}%>
                            <hr>
                        </div>
                        <%}%>

                        <div class="d-flex justify-content-center"> 
                            <input type="submit" name="sendTest" class="btn btn-outline-success" value="Enviar"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
