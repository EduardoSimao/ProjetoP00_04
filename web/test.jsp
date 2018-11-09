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
    </head>
    <body>
        <h1>Quiz</h1>
        <%if(request.getParameter("sendtest") != null){%>
        <%
            int sum = 0;
            for(Question q: Bd.getBioTest()){
              String userAnswer = request.getParameter(q.getTitle());
              if(userAnswer != null && userAnswer.equals(q.getAnswer())){
                  sum++;
              }
            }
            double grade = 100 * (((double)(sum))/((double)(Bd.getBioTest().size())));           
        %>
        <hr/><hr/>
        <h1>Resultado do teste: <u><%= grade %></u></h1>
        <hr/><hr/>
        <%}%>
        <h2>Test</h2>
        <form>
            <% for(Question q: Bd.getBioTest()){%>
            <h3><%=q.getTitle()%></h3>
            <%for(int i=0; i<q.getAlternatives().length; i++){%>
            <input type="radio" name="<%= q.getTitle()%>" value="<%= q.getAlternatives()[i]%>" />
            <%=q.getAlternatives()[i]%>
            <%}%>
            <input type="submit" name="sendTest" value="Enviar" />
        </form>
    </body>
</html>
