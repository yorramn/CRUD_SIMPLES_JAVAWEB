package br.com.DAO;

import br.com.DTO.LivroDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class LivroDAO {
    Connection conexao;
    PreparedStatement pstm;
    ResultSet rst;
    ArrayList<LivroDTO> listaLivros = new ArrayList<>();
    
    public void cadastrarLivro(LivroDTO livro){
        
        String sql = "INSERT INTO livros (nome) VALUES (?)";
        conexao = new ConexaoDAO().conexaoBanco();
        
        try {
            pstm = conexao.prepareStatement(sql);
            pstm.setString(1,livro.getNome());
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    public ArrayList<LivroDTO> pesquisarLivro(){
        String sql = "SELECT * FROM livros ";
        conexao = new ConexaoDAO().conexaoBanco();
        
        try {
            pstm = conexao.prepareStatement(sql);
            rst = pstm.executeQuery(sql);
            
            while (rst.next()) {                
             LivroDTO livro = new LivroDTO();
             
             livro.setId(rst.getInt("id"));
             livro.setNome(rst.getString("nome"));
             
             listaLivros.add(livro);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return listaLivros;
    }

    public void excluirLivro(String id, String nome){
        String sql = "DELETE FROM livros WHERE id = '"+id+"' AND nome = '"+nome+"'";
        System.out.println(id);
        conexao = new ConexaoDAO().conexaoBanco();
        
        try {
            pstm = conexao.prepareStatement(sql);
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    public void alterarLivro(String id, String nome){
        String sql = "UPDATE livros SET  nome = '"+nome+"' WHERE id = '"+id+"'";
        conexao = new ConexaoDAO().conexaoBanco();
        try {
            pstm = conexao.prepareStatement(sql);
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        
    }
}
