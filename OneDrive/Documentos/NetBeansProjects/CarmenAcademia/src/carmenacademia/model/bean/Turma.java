/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.model.bean;

/**
 *
 * @author mathe
 */
public class Turma {
    private int idTurma, idInstrutor;
    private String horario, dataInicio, dataFim, atividade;
    private Instrutor instru;

    public Turma(int idTurma, int idInstrutor, String horario, String dataInicio, String dataFim, String atividade) {
        this.idTurma = idTurma;
        this.idInstrutor = idInstrutor;
        this.horario = horario;
        this.dataInicio = dataInicio;
        this.dataFim = dataFim;
        this.atividade = atividade;
    }

    public Turma(int idInstrutor, String horario, String dataInicio, String dataFim, String atividade) {
        this.idInstrutor = idInstrutor;
        this.horario = horario;
        this.dataInicio = dataInicio;
        this.dataFim = dataFim;
        this.atividade = atividade;
    }

    public Turma(int idTurma) {
        this.idTurma = idTurma;
    }

    public Turma(String horario) {
        this.horario = horario;
    }
    
    
    
    public int getIdTurma() {
        return idTurma;
    }

    public void setIdTurma(int idTurma) {
        this.idTurma = idTurma;
    }

    public int getIdInstrutor() {
        return idInstrutor;
    }

    public void setIdInstrutor(int idInstrutor) {
        this.idInstrutor = idInstrutor;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public String getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(String dataInicio) {
        this.dataInicio = dataInicio;
    }

    public String getDataFim() {
        return dataFim;
    }

    public void setDataFim(String dataFim) {
        this.dataFim = dataFim;
    }

    public String getAtividade() {
        return atividade;
    }

    public void setAtividade(String atividade) {
        this.atividade = atividade;
    }

    public Instrutor getInstru() {
        return instru;
    }

    public void setInstru(Instrutor instru) {
        this.instru = instru;
    }
    
    
    
    @Override
    public String toString() {
        return "Turma{" + "idTurma=" + idTurma + ", idInstrutor=" + idInstrutor + ", horario=" + horario + ", dataInicio=" + dataInicio + ", dataFim=" + dataFim + ", atividade=" + atividade + '}';
    }
    
}