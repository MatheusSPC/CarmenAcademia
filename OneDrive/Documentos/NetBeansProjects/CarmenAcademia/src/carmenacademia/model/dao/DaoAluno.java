/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.model.dao;

import carmenacademia.model.bean.Aluno;
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
public class DaoAluno {

private final Connection c;
    
    public DaoAluno() throws SQLException, ClassNotFoundException{
        this.c = ConexaoDb.getConexaoMySQL();
    }

    public Aluno excluir(Aluno sisEnt) throws SQLException{
        String sql = "delete from Alunos WHERE codigoDaMatricula = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,sisEnt.getCodigoDaMatricula());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return sisEnt;
    }
    
    public Aluno buscar(Aluno sisEnt) throws SQLException{
        String sql = "select * from Alunos WHERE codigoDaMatricula = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,sisEnt.getCodigoDaMatricula());
            // executa
            ResultSet rs = stmt.executeQuery();
            Aluno alunoSaida = null;
            while (rs.next()) {      
            // criando o objeto Aluno
                alunoSaida = new Aluno(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(6),
                    rs.getString(7),
                    rs.getString(8));
            // adiciona o sis à lista de siss
            }
            stmt.close();
        return alunoSaida;
   }

    public Aluno inserir(Aluno sisEnt) throws SQLException{
        String sql = "insert into Alunos" + " (nome, dataDaMatricula, dataDeNascimento, endereco, telefone, altura, peso)" + " values (?,?,?,?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1,sisEnt.getNome());
        stmt.setString(2,sisEnt.getDataDaMatricula());
        stmt.setString(3,sisEnt.getDataDeNascimento());
        stmt.setString(4,sisEnt.getEndereco());
        stmt.setString(5,sisEnt.getTelefone());
        stmt.setString(6,sisEnt.getAltura());
        stmt.setString(7,sisEnt.getPeso());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int codigoDaMatricula = rs.getInt(1);
            sisEnt.setCodigoDaMatricula(codigoDaMatricula);
        }
        stmt.close();
        return sisEnt;
    }

    public Aluno alterar(Aluno sisEnt) throws SQLException{
        String sql = "UPDATE Alunos SET nome = ?, dataDaMatricula = ?, dataDeNascimento = ?, endereco = ?, telefone = ?, altura = ?, peso = ? WHERE codigoDaMatricula = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,sisEnt.getNome());
        stmt.setString(2,sisEnt.getDataDaMatricula());
        stmt.setString(3,sisEnt.getDataDeNascimento());
        stmt.setString(4,sisEnt.getEndereco());
        stmt.setString(5,sisEnt.getTelefone());
        stmt.setString(6,sisEnt.getAltura());
        stmt.setString(7,sisEnt.getPeso());
        stmt.setInt(8,sisEnt.getCodigoDaMatricula());

        // executa
        stmt.execute();
        stmt.close();
        return sisEnt;
    }

   public List<Aluno> listar(Aluno sisEnt) throws SQLException{
        // usus: array armazena a lista de registros
        List<Aluno> sists = new ArrayList<>();
        
        String sql = "select * from Alunos where nome like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + sisEnt.getNome() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Aluno
            Aluno sis = new Aluno(
                rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5),
                rs.getString(6),
                rs.getString(7),
                rs.getString(8));
            // adiciona o sist à lista de sists
            sists.add(sis);
        }
        
        rs.close();
        stmt.close();
        return sists;
   }

    
}
