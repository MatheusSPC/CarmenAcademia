/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.model.dao;

import carmenacademia.model.bean.Turma;
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
public class DaoTurma {

private final Connection c;
    
    public DaoTurma() throws SQLException, ClassNotFoundException{
        this.c = ConexaoDb.getConexaoMySQL();
    }

    public Turma excluir(Turma sisEnt) throws SQLException{
        String sql = "delete from Turmas WHERE idTurma = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,sisEnt.getIdTurma());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return sisEnt;
    }
    
    public Turma buscar(Turma sisEnt) throws SQLException{
        String sql = "select * from Turmas WHERE idTurma = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,sisEnt.getIdTurma());
            // executa
            ResultSet rs = stmt.executeQuery();
            Turma turmaSaida = null;
            while (rs.next()) {      
            // criando o objeto Turma
                turmaSaida = new Turma(
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(6));
            // adiciona o sis à lista de siss
            }
            stmt.close();
        return turmaSaida;
   }

    public Turma inserir(Turma sisEnt) throws SQLException{
        String sql = "insert into Turmas" + " (idInstrutor, horario, dataInicio, dataFim, atividade)" + " values (?,?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setInt(1,sisEnt.getIdInstrutor());
        stmt.setString(2,sisEnt.getHorario());
        stmt.setString(3,sisEnt.getDataInicio());
        stmt.setString(4,sisEnt.getDataFim());
        stmt.setString(5,sisEnt.getAtividade());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int idTurma = rs.getInt(1);
            sisEnt.setIdTurma(idTurma);
        }
        stmt.close();
        return sisEnt;
    }

    public Turma alterar(Turma sisEnt) throws SQLException{
        String sql = "UPDATE Turmas SET idInstrutor = ?, horario = ?, dataInicio = ?, dataFim = ?, atividade = ? WHERE idTurma = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,sisEnt.getIdInstrutor());
        stmt.setString(2,sisEnt.getHorario());
        stmt.setString(3,sisEnt.getDataInicio());
        stmt.setString(4,sisEnt.getDataFim());
        stmt.setString(5,sisEnt.getAtividade());
        stmt.setInt(6,sisEnt.getIdTurma());

        // executa
        stmt.execute();
        stmt.close();
        return sisEnt;
    }

   public List<Turma> listar(Turma sisEnt) throws SQLException{
        // usus: array armazena a lista de registros
        List<Turma> sists = new ArrayList<>();
        
        String sql = "select * from Turmas where horario like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + sisEnt.getHorario()+ "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Turma
            Turma sis = new Turma(
                rs.getInt(1),
                rs.getInt(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5),
                rs.getString(6));
            // adiciona o sist à lista de sists
            sists.add(sis);
        }
        
        rs.close();
        stmt.close();
        return sists;
   }

    
}
