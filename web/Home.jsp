<%-- 
    Document   : Home
    Created on : 02/11/2018, 16:58:22
    Author     : EduardoSimão
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="br.com.fatecpg.quiz.Bd"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/links.jspf" %>
        <title>WebQuiz</title>

    </head>
    <body>
        <%@include file="WEB-INF/NavBar.jspf" %>
        <br>
        <div class="container justify-content-center">
            <div class="row">
                <div class="d-flex justify-content-center col-md-6">Ranking Geral</br>
                    TODO RANKING</br>
                    1</br>
                    1</br>
                    1</br>
                    1</br>
                    1</br>
                    1</br>
                    1</br>
                </div>
                <div class="d-flex justify-content-center col-md-6">Testes Pessoais</br>
                    TODO RANKING</br>
                    1</br>
                    1</br>
                    1</br>
                    1</br>
                    1</br>
                    1</br>
                    1</br>
                </div>
                <div class="mx-auto mb-2">
                    <% if (session.getValue("usuario") != null || session.getValue("senha") != null) {%>
                    <a href="test.jsp"><button type="submit" class="btn btn-success">Realizar Test</button></a>
                    <%} else{%>
                    <button type="submit" class="btn btn-success" disabled title="Faça login para realizar o teste">Realizar Test</button>
                    <%}%> 
                    
                </div>  
            </div>
        </div>
         <%@include file="WEB-INF/footer.jspf" %>
    </body>
    
</html>
