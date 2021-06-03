<%@page import="br.com.DAO.LivroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                 try {
                 String id = request.getParameter("id");
                 String nome = request.getParameter("nome");
                 
                 LivroDAO livro = new LivroDAO();
                 livro.alterarLivro(id, nome);
                } catch (Exception e) {
                    out.print(e.getMessage());
                }%>
            <script>
            window.location.href = "index.jsp";
        </script>
    </body>
</html>
