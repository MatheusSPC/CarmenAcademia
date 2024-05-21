/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.model.bean;

/**
 *
 * @author mathe
 */
public class Instrutor {    
    private int idInstrutor;
    private String nome, RG, dataDeNascimento, titulacao;

    public Instrutor(int idInstrutor, String nome, String RG, String dataDeNascimento, String titulacao) {
        this.idInstrutor = idInstrutor;
        this.nome = nome;
        this.RG = RG;
        this.dataDeNascimento = dataDeNascimento;
        this.titulacao = titulacao;
    }

    public Instrutor(String nome, String RG, String dataDeNascimento, String titulacao) {
        this.nome = nome;
        this.RG = RG;
        this.dataDeNascimento = dataDeNascimento;
        this.titulacao = titulacao;
    }

    public Instrutor(int idInstrutor) {
        this.idInstrutor = idInstrutor;
    }

    public Instrutor(String nome) {
        this.nome = nome;
    }

    
    

    public String getRG() {
        return RG;
    }

    public void setRG(String RG) {
        this.RG = RG;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDataDeNascimento() {
        return dataDeNascimento;
    }

    public void setDataDeNascimento(String dataDeNascimento) {
        this.dataDeNascimento = dataDeNascimento;
    }

    public String getTitulacao() {
        return titulacao;
    }

    public void setTitulacao(String titulacao) {
        this.titulacao = titulacao;
    }

    public int getIdInstrutor() {
        return idInstrutor;
    }

    public void setIdInstrutor(int idInstrutor) {
        this.idInstrutor = idInstrutor;
    }

    @Override
    public String toString() {
        return "Instrutor{" + "idInstrutor=" + idInstrutor + ", RG=" + RG + ", nome=" + nome + ", dataDeNascimento=" + dataDeNascimento + ", titulacao=" + titulacao + '}';
    }

    
  
}
