/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.controller;

import carmenacademia.model.bean.Chamada;
import carmenacademia.model.bean.Matricula;
import carmenacademia.model.dao.DaoChamada;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @Matheuszin
 */
public class ControllerChamada {
    
    DaoChamada daoComp;
    ControllerMatricula contInstru;

    

    public Chamada inserir(Chamada compEnt) throws SQLException, ClassNotFoundException {
        daoComp = new DaoChamada();
        Chamada compSaida = daoComp.inserir(compEnt);
        return compSaida;
    }

    public Chamada alterar(Chamada compEnt) throws SQLException, ClassNotFoundException {
        daoComp = new DaoChamada();
        Chamada compSaida = daoComp.alterar(compEnt);
        return compSaida;
    }

    public Chamada buscar(Chamada compEnt) throws SQLException, ClassNotFoundException {
        
        daoComp = new DaoChamada();
        Chamada compSaida = daoComp.buscar(compEnt);
        
        Matricula usu = new Matricula(compSaida.getIdMatricula());
        contInstru = new ControllerMatricula();
        compSaida.setMatricula(contInstru.buscar(usu));
        
        return compSaida;
    }

    public Chamada excluir(Chamada compEnt) throws SQLException, ClassNotFoundException {
        daoComp = new DaoChamada();
        Chamada compSaida = daoComp.excluir(compEnt);
        return compSaida;
    }

    public List<Chamada> listar(Chamada compEnt) throws SQLException, ClassNotFoundException {
        daoComp = new DaoChamada();
        List<Chamada> listaInstruarioAux = daoComp.listar(compEnt);
        List<Chamada> listaInstruario = new ArrayList<>();
        for(Chamada usuSis: listaInstruarioAux) {
            listaInstruario.add(buscar(usuSis));
        }
        return listaInstruario;
     }
    
}
