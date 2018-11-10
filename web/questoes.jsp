<%-- 
    Document   : quiz
    Created on : 08/11/2018, 22:31:40
    Author     : usuario
--%>
<%@page import="br.com.fatecpg.quiz.Historico"%>
<%@page import="java.util.Calendar"%>
<%@page import="br.com.fatecpg.quiz.Bd"%>
<%@page import="br.com.fatecpg.quiz.Questoes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/JSPF/logged.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/JSPF/header.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz</title>
    </head>
    <body>
        <%@ include file="WEB-INF/JSPF/menu.jspf" %>
        <div class="bg-light py-5 mb-4 text-center">
            <h1>Boa sorte!</h1>
            <% if (request.getParameter("finalizar") != null) { %>
            <%
                int soma = 0;
                for (Questoes q : Bd.getQuestions()) {
                    String resposta = request.getParameter(q.getQuestion());
                    if (resposta != null && resposta.equals(q.getAnswer())) {
                        soma++;
                    }
                }
                double media = 10.0 * ((double) (soma) / (double) (Bd.getQuestions().size()));

                Calendar calendar = Calendar.getInstance();
                calendar.set(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH), calendar.get(Calendar.DATE),
                        calendar.get(Calendar.HOUR_OF_DAY), calendar.get(Calendar.MINUTE));
                Bd.getHistoric().add(new Historico(logged, media, calendar.getTime()));

            %>
            <h1>Resultado do seu questionário: <%=media%></h1>
            <%}
                int j = 1; %>
        </div>
        <div class="container">
            <div class="row">
                <div class="quiz">
                    <form>
                        <% for (Questoes q : Bd.getQuestions()) {%>
                        <h2>Questão <%= j++%>:</h2>
                        <h4><%= q.getQuestion()%></h4>
                        <hr/>
                        <% for (int i = 0; i < q.getAlternatives().length; i++) {%>
                        <div class="form-group">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="<%=q.getQuestion()%>" value="<%=q.getAlternatives()[i]%>" required><h6><%=q.getAlternatives()[i]%></h6>
                                </label>
                            </div>
                            <%}%>                            
                            <%}%>
                        </div>
                    </form>     
                    <div class="row">
                        <button type = "submit" class="btn btn-primary" name="finalizar">Enviar Respostas</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
