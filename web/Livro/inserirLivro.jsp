<%-- 
    Document   : inserirLivro
    Created on : 02/06/2021, 15:57:33
    Author     : Yorrmn
--%>

<%@page import="br.com.DTO.LivroDTO"%>
<%@page import="br.com.DAO.LivroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%  
            try {
                 LivroDTO livro = new LivroDTO();
                 livro.setNome(request.getParameter("nome"));
            
                 LivroDAO bd_livro = new LivroDAO();
                 bd_livro.cadastrarLivro(livro);
                } catch (Exception e) {
                    System.out.println(e.getMessage());
                }

        %>
        <script>
            window.location.href = "index.jsp";
        </script>
    </body>
</html>
