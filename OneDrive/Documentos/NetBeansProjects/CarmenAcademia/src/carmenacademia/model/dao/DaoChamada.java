/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.model.dao;

import carmenacademia.model.bean.Chamada;
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
public class DaoChamada {

private final Connection c;
    
    public DaoChamada() throws SQLException, ClassNotFoundException{
        this.c = ConexaoDb.getConexaoMySQL();
    }

    public Chamada excluir(Chamada sisEnt) throws SQLException{
        String sql = "delete from Chamadas WHERE idChamada = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,sisEnt.getIdChamada());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return sisEnt;
    }
    
    public Chamada buscar(Chamada sisEnt) throws SQLException{
        String sql = "select * from Chamadas WHERE idChamada = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,sisEnt.getIdChamada());
            // executa
            ResultSet rs = stmt.executeQuery();
            Chamada turmaSaida = null;
            while (rs.next()) {      
            // criando o objeto Chamada
                turmaSaida = new Chamada(
                    rs.getInt(1),
                    rs.getInt(2),
                    rs.getBoolean(3),
                    rs.getString(4));
            // adiciona o sis à lista de siss
            }
            stmt.close();
        return turmaSaida;
   }

    public Chamada inserir(Chamada sisEnt) throws SQLException{
        String sql = "insert into Chamadas" + " (idMatricula, presente, dataChamada)" + " values (?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setInt(1,sisEnt.getIdMatricula());
        stmt.setBoolean(2,sisEnt.isPresente());
        stmt.setString(3,sisEnt.getData());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int idChamada = rs.getInt(1);
            sisEnt.setIdChamada(idChamada);
        }
        stmt.close();
        return sisEnt;
    }

    public Chamada alterar(Chamada sisEnt) throws SQLException{
        String sql = "UPDATE Chamadas SET idMatricula = ?, presente = ?, dataChamada = ? WHERE idChamada = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,sisEnt.getIdMatricula());
        stmt.setBoolean(2,sisEnt.isPresente());
        stmt.setString(3,sisEnt.getData());
        stmt.setInt(6,sisEnt.getIdChamada());

        // executa
        stmt.execute();
        stmt.close();
        return sisEnt;
    }

   public List<Chamada> listar(Chamada sisEnt) throws SQLException{
        // usus: array armazena a lista de registros
        List<Chamada> sists = new ArrayList<>();
        
        String sql = "select * from Chamadas where horario like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + sisEnt.getData()+ "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Chamada
            Chamada sis = new Chamada(
                rs.getInt(1),
                rs.getInt(2),
                rs.getBoolean(3),
                rs.getString(4));
            // adiciona o sist à lista de sists
            sists.add(sis);
        }
        
        rs.close();
        stmt.close();
        return sists;
   }

    
}
