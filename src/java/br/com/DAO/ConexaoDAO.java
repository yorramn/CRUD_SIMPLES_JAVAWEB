package br.com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexaoDAO {
    
    public Connection conexaoBanco(){
        Connection conexao = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/biblioteca?user=root&password=";
            conexao = DriverManager.getConnection(url);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return conexao;
    }
 
    
}

