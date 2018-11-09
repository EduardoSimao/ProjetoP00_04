<%-- 
    Document   : cadUser
    Created on : 09/11/2018, 12:46:25
    Author     : eduardo
--%>
<%@page import="br.com.fatecpg.quiz.Bd"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/links.jspf" %>
        <title>JSP Page</title>
    </head>
    <body style="padding-bottom: 30px;">
        <%@include  file="WEB-INF/NavBar.jspf"%>
        <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
            <h1 class="display-4"> Cadastrar Usuário </h1>
        </div>
        
         <%
            if(request.getParameter("inserir")!= null){
            String nome = request.getParameter("nome");
            String senha = request.getParameter("senha");
            Usuario user = new Usuario(nome, senha);
            Bd.getUsuario().add(user);
            response.sendRedirect("Home.jsp");
        }
        %>        
        <form class="container">
            <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="inputNome">Nome</label>
                  <input type="text" class="form-control" name="nome" placeholder="Nome">
                </div>

                <div class="form-group col-md-6">
                  <label for="inputSenha">Senha</label>
                  <input type="password" class="form-control" name="senha" placeholder="Senha">
                </div>
                
            </div> 
                <center>
                    <button type="submit" class="btn btn-dark" name="inserir">Cadastrar</button>
                    <a href="Home.jsp"><button type="button" class="btn btn-dark">Cancelar</button></a>
                </center>
            <br>
          </form>
            <div>
                <%@include  file="WEB-INF/footer.jspf"%>
            </div>
    </body>
</html>
