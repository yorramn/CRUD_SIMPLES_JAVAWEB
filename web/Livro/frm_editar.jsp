<%@page import="br.com.DAO.LivroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                 String id = request.getParameter("id");
                 String nome = request.getParameter("nome");
        %>
        <section class="section">
            <div class="container">
                <div class="row">
                    <a href="index.jsp" class="btn grey darken-4">  <i class="large material-icons">arrow_back</i></a>
                        <br><br><form method="POST" action="editar.jsp" class="centered highlight"> 
                          <label>Código do Livro:</label>
                             <input type="text" name="id" readonly value="<%out.print(id);%>"><br><br>

                               <label>Nome do Livro:</label>
                               <input type="text" name="nome" value="<%out.print(nome);%>"> 

                               <button type="submit" class="btn grey darken-1 right">Alterar</button>
                        </form>  
                </div>
            </div>
        </section>
        
 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script>  M.AutoInit(); </script>
    </body>
</html>
