/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.model.dao;

import carmenacademia.model.bean.Instrutor;
import carmenacademia.util.ConexaoDb;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @Matheuszin
 */
public class DaoInstrutor {

private final Connection c;
    
    public DaoInstrutor() throws SQLException, ClassNotFoundException{
        this.c = ConexaoDb.getConexaoMySQL();
    }

    public Instrutor excluir(Instrutor sisEnt) throws SQLException{
        String sql = "delete from Instrutores WHERE idInstrutor = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,sisEnt.getIdInstrutor());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return sisEnt;
    }
    
    public Instrutor buscar(Instrutor sisEnt) throws SQLException{
        String sql = "select * from Instrutores WHERE idInstrutor = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,sisEnt.getIdInstrutor());
            // executa
            ResultSet rs = stmt.executeQuery();
            Instrutor instrutorSaida = null;
            while (rs.next()) {      
            // criando o objeto Instrutor
                instrutorSaida = new Instrutor(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5));
            // adiciona o sis à lista de siss
            }
            stmt.close();
        return instrutorSaida;
   }

    public Instrutor inserir(Instrutor sisEnt) throws SQLException{
        String sql = "insert into Instrutores" + " (nome, RG, dataDeNascimento, titulacao)" + " values (?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1,sisEnt.getNome());
        stmt.setString(2,sisEnt.getRG());
        stmt.setString(3,sisEnt.getDataDeNascimento());
        stmt.setString(4,sisEnt.getTitulacao());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int idInstrutor = rs.getInt(1);
            sisEnt.setIdInstrutor(idInstrutor);
        }
        stmt.close();
        return sisEnt;
    }

    public Instrutor alterar(Instrutor sisEnt) throws SQLException{
        String sql = "UPDATE Instrutores SET nome = ?, RG = ?, dataDeNascimento = ?, titulacao = ? WHERE idInstrutor = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,sisEnt.getNome());
        stmt.setString(2,sisEnt.getRG());
        stmt.setString(3,sisEnt.getDataDeNascimento());
        stmt.setString(4,sisEnt.getTitulacao());
        stmt.setInt(5,sisEnt.getIdInstrutor());

        // executa
        stmt.execute();
        stmt.close();
        return sisEnt;
    }

   public List<Instrutor> listar(Instrutor sisEnt) throws SQLException{
        // usus: array armazena a lista de registros
        List<Instrutor> sists = new ArrayList<>();
        
        String sql = "select * from Instrutores where nome like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + sisEnt.getNome() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Instrutor
            Instrutor sis = new Instrutor(
                rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5));
            // adiciona o sist à lista de sists
            sists.add(sis);
        }
        
        rs.close();
        stmt.close();
        return sists;
   }

    
}
