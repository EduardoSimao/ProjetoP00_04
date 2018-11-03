<%-- 
    Document   : login
    Created on : 03/11/2018, 12:07:58
    Author     : Positivo
--%>

<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page import="br.com.fatecpg.quiz.Bd"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head> 
    <body>
        <%            
        String user_form = request.getParameter("user");
        String senha_form = request.getParameter("password");
        for(Usuario u: Bd.getUsuario()){
            if(user_form.equals(u.getNome()) && senha_form.equals(u.getSenha())){
                out.println("Logado com sucesso.");
                session.putValue("usuario", u.getNome());
                session.putValue("senha", u.getSenha());
                out.println("<script>document.location.href='Home.jsp';</script>"); //Exibe um código javascript para redireionar ao painel
                } else {
                out.println("Login ou senha inválidos. <a href='Home.jsp'>Voltar</a>"); //Exibe na tela e pede para voltar
                }
                
            }

        
        %>

    </body>
</html>
