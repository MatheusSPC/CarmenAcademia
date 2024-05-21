/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.controller;

import carmenacademia.model.bean.Turma;
import carmenacademia.model.bean.Instrutor;
import carmenacademia.model.dao.DaoTurma;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @Matheuszin
 */
public class ControllerTurma {
    
    DaoTurma daoComp;
    ControllerInstrutor contInstru;

    

    public Turma inserir(Turma compEnt) throws SQLException, ClassNotFoundException {
        daoComp = new DaoTurma();
        Turma compSaida = daoComp.inserir(compEnt);
        return compSaida;
    }

    public Turma alterar(Turma compEnt) throws SQLException, ClassNotFoundException {
        daoComp = new DaoTurma();
        Turma compSaida = daoComp.alterar(compEnt);
        return compSaida;
    }

    public Turma buscar(Turma compEnt) throws SQLException, ClassNotFoundException {
        
        daoComp = new DaoTurma();
        Turma compSaida = daoComp.buscar(compEnt);
        
        Instrutor usu = new Instrutor(compSaida.getIdInstrutor());
        contInstru = new ControllerInstrutor();
        compSaida.setInstru(contInstru.buscar(usu));
        
        return compSaida;
    }

    public Turma excluir(Turma compEnt) throws SQLException, ClassNotFoundException {
        daoComp = new DaoTurma();
        Turma compSaida = daoComp.excluir(compEnt);
        return compSaida;
    }

    public List<Turma> listar(Turma compEnt) throws SQLException, ClassNotFoundException {
        daoComp = new DaoTurma();
        List<Turma> listaInstruarioAux = daoComp.listar(compEnt);
        List<Turma> listaInstruario = new ArrayList<>();
        for(Turma usuSis: listaInstruarioAux) {
            listaInstruario.add(buscar(usuSis));
        }
        return listaInstruario;
     }
    
}
