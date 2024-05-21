/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.controller;

import carmenacademia.model.bean.Turma;
import carmenacademia.model.bean.Aluno;
import carmenacademia.model.bean.Matricula;
import carmenacademia.model.dao.DaoMatricula;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @Matheuszin
 */
public class ControllerMatricula {
    
    DaoMatricula daoComp;
    ControllerTurma contTur;
    ControllerAluno contAlu;
    

    public Matricula inserir(Matricula compEnt) throws SQLException, ClassNotFoundException {
        daoComp = new DaoMatricula();
        Matricula compSaida = daoComp.inserir(compEnt);
        return compSaida;
    }

    public Matricula alterar(Matricula compEnt) throws SQLException, ClassNotFoundException {
        daoComp = new DaoMatricula();
        Matricula compSaida = daoComp.alterar(compEnt);
        return compSaida;
    }

    public Matricula buscar(Matricula compEnt) throws SQLException, ClassNotFoundException {
        
        daoComp = new DaoMatricula();
        Matricula compSaida = daoComp.buscar(compEnt);
        
        Turma usu = new Turma(compSaida.getIdTurma());
        contTur = new ControllerTurma();
        compSaida.setTurma(contTur.buscar(usu));
        
        Aluno comp = new Aluno(compSaida.getIdAluno());
        contAlu = new ControllerAluno();
        compSaida.setAluno(contAlu.buscar(comp));
        
        return compSaida;
    }

    public Matricula excluir(Matricula compEnt) throws SQLException, ClassNotFoundException {
        daoComp = new DaoMatricula();
        Matricula compSaida = daoComp.excluir(compEnt);
        return compSaida;
    }

    public List<Matricula> listar(Matricula compEnt) throws SQLException, ClassNotFoundException {
        daoComp = new DaoMatricula();
        List<Matricula> listaTurmaAux = daoComp.listar(compEnt);
        List<Matricula> listaTurma = new ArrayList<>();
        for(Matricula usuSis: listaTurmaAux) {
            listaTurma.add(buscar(usuSis));
        }
        return listaTurma;
     }
    
}
