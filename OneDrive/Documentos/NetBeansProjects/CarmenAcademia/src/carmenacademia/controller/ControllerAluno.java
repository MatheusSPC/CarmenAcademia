/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.controller;

import carmenacademia.model.bean.Aluno;
import carmenacademia.model.dao.DaoAluno;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @Matheuszin
 */
public class ControllerAluno {
    
    DaoAluno daoSis;

    public Aluno inserir(Aluno usuEnt) throws SQLException, ClassNotFoundException {
        daoSis = new DaoAluno();
        Aluno sisSaida = daoSis.inserir(usuEnt);
        return sisSaida;
    }

    public Aluno alterar(Aluno usuEnt) throws SQLException, ClassNotFoundException {
        daoSis = new DaoAluno();
        Aluno sisSaida = daoSis.alterar(usuEnt);
        return sisSaida;
    }

    public Aluno buscar(Aluno usuEnt) throws SQLException, ClassNotFoundException {
        daoSis = new DaoAluno();
        Aluno sisSaida = daoSis.buscar(usuEnt);
        return sisSaida;
    }

    public Aluno excluir(Aluno usuEnt) throws SQLException, ClassNotFoundException {
        daoSis = new DaoAluno();
        Aluno sisSaida = daoSis.excluir(usuEnt);
        return sisSaida;
    }

    public List<Aluno> listar(Aluno usuEnt) throws SQLException, ClassNotFoundException {
        daoSis = new DaoAluno();
        List<Aluno> listaAlunos = daoSis.listar(usuEnt);
        return listaAlunos;
     }
    
}
