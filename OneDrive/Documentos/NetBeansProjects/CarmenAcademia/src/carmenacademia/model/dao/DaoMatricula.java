/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.model.dao;

import carmenacademia.model.bean.Matricula;
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
public class DaoMatricula {

private final Connection c;
    
    public DaoMatricula() throws SQLException, ClassNotFoundException{
        this.c = ConexaoDb.getConexaoMySQL();
    }

    public Matricula excluir(Matricula sisEnt) throws SQLException{
        String sql = "delete from Matriculas WHERE idMatricula = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,sisEnt.getIdMatricula());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return sisEnt;
    }
    
    public Matricula buscar(Matricula sisEnt) throws SQLException{
        String sql = "select * from Matriculas WHERE idMatricula = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,sisEnt.getIdMatricula());
            // executa
            ResultSet rs = stmt.executeQuery();
            Matricula turmaSaida = null;
            while (rs.next()) {      
            // criando o objeto Matricula
                turmaSaida = new Matricula(
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getInt(3));
            // adiciona o sis à lista de siss
            }
            stmt.close();
        return turmaSaida;
   }

    public Matricula inserir(Matricula sisEnt) throws SQLException{
        String sql = "insert into Matriculas" + " (idTurma, idAluno)" + " values (?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setInt(1,sisEnt.getIdTurma());
        stmt.setInt(2,sisEnt.getIdAluno());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int idMatricula = rs.getInt(1);
            sisEnt.setIdMatricula(idMatricula);
        }
        stmt.close();
        return sisEnt;
    }

    public Matricula alterar(Matricula sisEnt) throws SQLException{
        String sql = "UPDATE Matriculas SET idTurma = ?, idAluno = ? WHERE idMatricula = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,sisEnt.getIdTurma());
        stmt.setInt(2,sisEnt.getIdAluno());

        // executa
        stmt.execute();
        stmt.close();
        return sisEnt;
    }

   public List<Matricula> listar(Matricula sisEnt) throws SQLException{
        // usus: array armazena a lista de registros
        List<Matricula> sists = new ArrayList<>();
        
        String sql = "select * from Matriculas where idTurma like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + sisEnt.getIdTurma()+ "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Matricula
            Matricula sis = new Matricula(
                rs.getInt(1),
                rs.getInt(2),
                rs.getInt(3));
            // adiciona o sist à lista de sists
            sists.add(sis);
        }
        
        rs.close();
        stmt.close();
        return sists;
   }

    
}
