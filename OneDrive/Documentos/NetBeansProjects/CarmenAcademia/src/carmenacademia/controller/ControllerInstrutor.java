/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.controller;

import carmenacademia.model.bean.Instrutor;
import carmenacademia.model.dao.DaoInstrutor;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @Matheuszin
 */
public class ControllerInstrutor {
    
    DaoInstrutor daoSis;

    public Instrutor inserir(Instrutor usuEnt) throws SQLException, ClassNotFoundException {
        daoSis = new DaoInstrutor();
        Instrutor sisSaida = daoSis.inserir(usuEnt);
        return sisSaida;
    }

    public Instrutor alterar(Instrutor usuEnt) throws SQLException, ClassNotFoundException {
        daoSis = new DaoInstrutor();
        Instrutor sisSaida = daoSis.alterar(usuEnt);
        return sisSaida;
    }

    public Instrutor buscar(Instrutor usuEnt) throws SQLException, ClassNotFoundException {
        daoSis = new DaoInstrutor();
        Instrutor sisSaida = daoSis.buscar(usuEnt);
        return sisSaida;
    }

    public Instrutor excluir(Instrutor usuEnt) throws SQLException, ClassNotFoundException {
        daoSis = new DaoInstrutor();
        Instrutor sisSaida = daoSis.excluir(usuEnt);
        return sisSaida;
    }

    public List<Instrutor> listar(Instrutor usuEnt) throws SQLException, ClassNotFoundException {
        daoSis = new DaoInstrutor();
        List<Instrutor> listaInstrutors = daoSis.listar(usuEnt);
        return listaInstrutors;
     }
    
}
