/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.view;

import carmenacademia.controller.ControllerAluno;
import carmenacademia.model.bean.Aluno;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @Matheuszin
 */
public class ViewAluno {
    
    public static void menu() throws SQLException, ClassNotFoundException {
        String msg = " 1 - Inserir \n 2 - Alterar \n 3 - buscar \n 4 - excluir \n 5 - Listar " ;
        int num = Integer.parseInt(JOptionPane.showInputDialog(msg));
        switch (num) {
            case 1:
                inserir();
                break;
            case 2:
                alterar();
                break;
            case 3:
                buscar();
                break;
            case 4:
                excluir();
                break;
            case 5:
                listar();
                break;
            default:
                System.out.println("Opcao inválida");
        }
    }

    private static void inserir() throws SQLException, ClassNotFoundException {
        String nome = JOptionPane.showInputDialog("Nome");
        String dataDaMatricula = JOptionPane.showInputDialog("Data Da Matricula");
        String dataDeNascimento = JOptionPane.showInputDialog("Data De Nascimento");
        String endereco = JOptionPane.showInputDialog("Endereço");
        String telefone = JOptionPane.showInputDialog("Telefone");
        String altura = JOptionPane.showInputDialog("Altura");
        String peso = JOptionPane.showInputDialog("Peso");
        Aluno sisEnt = new Aluno(nome,  dataDaMatricula,  dataDeNascimento, endereco,  telefone, altura, peso);
        ControllerAluno contSis = new ControllerAluno();
        Aluno sisSaida = contSis.inserir(sisEnt);
        JOptionPane.showMessageDialog(null,sisSaida.toString());
    }

    private static void alterar() throws SQLException, ClassNotFoundException {
        int codigoDaMatricula = Integer.parseInt(JOptionPane.showInputDialog("Codigo Da Matricula"));
        String nome = JOptionPane.showInputDialog("Nome");
        String dataDaMatricula = JOptionPane.showInputDialog("Data Da Matricula");
        String dataDeNascimento = JOptionPane.showInputDialog("Data De Nascimento");
        String endereco = JOptionPane.showInputDialog("Endereço");
        String telefone = JOptionPane.showInputDialog("Telefone");
        String altura = JOptionPane.showInputDialog("Altura");
        String peso = JOptionPane.showInputDialog("Peso");
        Aluno sisEnt = new Aluno(codigoDaMatricula ,nome,  dataDaMatricula,  dataDeNascimento, endereco,  telefone, altura, peso);
        ControllerAluno contSis = new ControllerAluno();
        Aluno sisSaida = contSis.alterar(sisEnt);
        JOptionPane.showMessageDialog(null,sisSaida.toString());
    }

    private static void buscar() throws SQLException, ClassNotFoundException {
        int condigoDaMatricula = Integer.parseInt(JOptionPane.showInputDialog("Codigo Da Matricula"));
        Aluno sisEnt = new Aluno(condigoDaMatricula);
        ControllerAluno contSis = new ControllerAluno();
        Aluno sisSaida = contSis.buscar(sisEnt);
        JOptionPane.showMessageDialog(null,sisSaida.toString());
    }

    private static void excluir() throws SQLException, ClassNotFoundException {
        int condigoDaMatricula = Integer.parseInt(JOptionPane.showInputDialog("Codigo Da Matricula"));
        Aluno sisEnt = new Aluno(condigoDaMatricula);
        ControllerAluno contSis = new ControllerAluno();
        Aluno sisSaida = contSis.excluir(sisEnt);
        JOptionPane.showMessageDialog(null,sisSaida.toString());
    }

    private static void listar() throws SQLException, ClassNotFoundException {
        String nome = JOptionPane.showInputDialog("Nome");
        Aluno sisEnt = new Aluno(nome);
        ControllerAluno contSis = new ControllerAluno();
        List<Aluno> listaAluno = contSis.listar(sisEnt);
        for (Aluno sisSaida : listaAluno) {
            JOptionPane.showMessageDialog(null,sisSaida.toString());
        }
    }


}