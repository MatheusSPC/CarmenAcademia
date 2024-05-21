/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.model.bean;

/**
 *
 * @author mathe
 */
public class Aluno {    
    private int codigoDaMatricula;
    private String nome, dataDaMatricula, dataDeNascimento, endereco, telefone, altura, peso;


    public Aluno(int codigoDaMatricula, String nome, String dataDaMatricula, String dataDeNascimento, String endereco, String telefone, String altura, String peso) {
        this.codigoDaMatricula = codigoDaMatricula;
        this.nome = nome;
        this.dataDaMatricula = dataDaMatricula;
        this.dataDeNascimento = dataDeNascimento;
        this.endereco = endereco;
        this.telefone = telefone;
        this.altura = altura;
        this.peso = peso;
        
    }

    public Aluno(String nome, String dataDaMatricula, String dataDeNascimento, String endereco, String telefone, String altura, String peso) {
        this.nome = nome;
        this.dataDaMatricula = dataDaMatricula;
        this.dataDeNascimento = dataDeNascimento;
        this.endereco = endereco;
        this.telefone = telefone;
        this.altura = altura;
        this.peso = peso;
    }

    public Aluno(int codigoDaMatricula) {
        this.codigoDaMatricula = codigoDaMatricula;
    }

    public Aluno(String nome) {
        this.nome = nome;
    }
    


    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDataDaMatricula() {
        return dataDaMatricula;
    }

    public void setDataDaMatricula(String dataDaMatricula) {
        this.dataDaMatricula = dataDaMatricula;
    }

    public String getDataDeNascimento() {
        return dataDeNascimento;
    }

    public void setDataDeNascimento(String dataDeNascimento) {
        this.dataDeNascimento = dataDeNascimento;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getAltura() {
        return altura;
    }

    public void setAltura(String altura) {
        this.altura = altura;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public int getCodigoDaMatricula() {
        return codigoDaMatricula;
    }

    public void setCodigoDaMatricula(int codigoDaMatricula) {
        this.codigoDaMatricula = codigoDaMatricula;
    }

    @Override
    public String toString() {
        return "Aluno{" + "codigoDaMatricula=" + codigoDaMatricula + ", nome=" + nome + ", dataDaMatricula=" + dataDaMatricula + ", dataDeNascimento=" + dataDeNascimento + ", endereco=" + endereco + ", telefone=" + telefone + ", altura=" + altura + ", peso=" + peso + '}';
    }

    
}
