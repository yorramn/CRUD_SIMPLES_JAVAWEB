<%@page import="br.com.DTO.LivroDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.LivroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>    
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <section class="section">
            <div class="container">
                <div class="row">
                    <div class=" col s12 xl6">
                                <h3>Livros cadastrados</h3>
        <table border="1" cellpadding="12" cellspacing="5" class="highlight">
            <thead>
                <tr>
                    <th>Código</th>
                    <th>Nome</th>
                </tr>
            </thead>
            <tbody>        
                <tr>
        <%
            try {
                    LivroDAO livro = new LivroDAO();
                    ArrayList<LivroDTO> lista = livro.pesquisarLivro();
                    for (int i = 0; i < lista.size(); i++) {
        %>
                    <td><%out.print(lista.get(i).getId()); %></td>
                    <td><%out.print(lista.get(i).getNome()); %></td>
                    <td>
                        <%out.print("<a href='excluir.jsp?id="
                          + lista.get(i).getId() + "&nome="
                          + lista.get(i).getNome() + "'>Excluir</a>");%>
                    </td>
                    <td>
                        <%out.print("<a href='frm_editar.jsp?id="
                          + lista.get(i).getId() + "&nome="
                          + lista.get(i).getNome() + "'>Editar</a>");%>
                    </td>
                    </tr>
                    
            <%      }
                } catch (Exception e) {
                    out.print(e.getMessage());
        }
        %>
                    
            </tbody>
        </table>
                    </div>
                    <div class=" col s12 xl6">
                      <h3>Inserir livro</h3>
                        <form method="POST" action="inserirLivro.jsp">
                            <label for="nome" >Nome do Livro:</label><br>
                            <input type="text" name="nome" >

                            <button class="btn grey darken-1 right " type="submit">Cadastrar</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        

        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script>  M.AutoInit(); </script>
        </body>
</html>
