/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.model.bean;

/**
 *
 * @author mathe
 */
public class Chamada {
    
    private int idChamada, idMatricula;
    private boolean presente;
    private String data;
    private Matricula matricula;
    private Aluno aluno;

    public Chamada(int idChamada, int idMatricula, boolean presente, String data) {
        this.idChamada = idChamada;
        this.idMatricula = idMatricula;
        this.presente = presente;
        this.data = data;
    }

    public Chamada(int idMatricula, boolean presente, String data) {
        this.idMatricula = idMatricula;
        this.presente = presente;
        this.data = data;
    }

    public Chamada(int idChamada) {
        this.idChamada = idChamada;
    }

    public Chamada(String data) {
        this.data = data;
    }
    
    public Chamada(Aluno aluno){
        this.aluno = aluno;
    }

    public Aluno getAluno() {
        return aluno;
    }
    
    
    
    public Matricula getMatricula() {
        return matricula;
    }

    public void setMatricula(Matricula matricula) {
        this.matricula = matricula;
    }

    public int getIdChamada() {
        return idChamada;
    }

    public void setIdChamada(int idChamada) {
        this.idChamada = idChamada;
    }

    public int getIdMatricula() {
        return idMatricula;
    }

    public void setIdMatricula(int idMatricula) {
        this.idMatricula = idMatricula;
    }

    public boolean isPresente() {
        return presente;
    }

    public void setPresente(boolean presente) {
        this.presente = presente;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    
    
    @Override
    public String toString() {
        return "Chamada{" + "idChamada=" + idChamada + ", idMatricula=" + idMatricula + ", presente=" + presente + ", data=" + data + '}';
    }
    
}
