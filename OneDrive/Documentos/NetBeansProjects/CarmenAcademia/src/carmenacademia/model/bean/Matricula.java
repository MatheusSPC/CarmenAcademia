/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.model.bean;

/**
 *
 * @author mathe
 */
public class Matricula {    
    private int idMatricula, idTurma, idAluno;
    private Aluno aluno;
    private Turma turma; 
    private String m;
    
    public Matricula(int idMatricula, int idTurma, int idAluno) {
        this.idMatricula = idMatricula;
        this.idTurma = idTurma;
        this.idAluno = idAluno;
    } 

    public Matricula(int idTurma, int idAluno) {
        this.idTurma = idTurma;
        this.idAluno = idAluno;
    }

    public Matricula(int idMatricula) {
        this.idMatricula = idMatricula;
    }

    public Matricula(int idTurma, String m) {
        this.idTurma = idTurma;
        this.m = m;
    }
    
    
    public int getIdMatricula() {
        return idMatricula;
    }

    public void setIdMatricula(int idMatricula) {
        this.idMatricula = idMatricula;
    }
    
    public int getIdTurma() {
        return idTurma;
    }

    public void setIdTurma(int idTurma) {
        this.idTurma = idTurma;
    }

    public int getIdAluno() {
        return idAluno;
    }

    public void setIdAluno(int idAluno) {
        this.idAluno = idAluno;
    }

    public Aluno getAluno() {
        return aluno;
    }

    public void setAluno(Aluno aluno) {
        this.aluno = aluno;
    }

    public Turma getTurma() {
        return turma;
    }

    public void setTurma(Turma turma) {
        this.turma = turma;
    }

    @Override
    public String toString() {
        return "Matricula{" + "idMatricula=" + idMatricula + ", idTurma=" + idTurma + ", idAluno=" + idAluno + '}';
    } 
}
