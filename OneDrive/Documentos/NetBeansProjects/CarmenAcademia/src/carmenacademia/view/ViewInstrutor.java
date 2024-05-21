/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.view;

import carmenacademia.controller.ControllerInstrutor;
import carmenacademia.model.bean.Instrutor;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @Matheuszin
 */
public class ViewInstrutor {
    
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
        String RG = JOptionPane.showInputDialog("RG");
        String dataDeNascimento = JOptionPane.showInputDialog("Data De Nascimento");
        String titulacao = JOptionPane.showInputDialog("Endereço");
        Instrutor sisEnt = new Instrutor(nome,  RG ,  dataDeNascimento, titulacao);
        ControllerInstrutor contSis = new ControllerInstrutor();
        Instrutor sisSaida = contSis.inserir(sisEnt);
        JOptionPane.showMessageDialog(null,sisSaida.toString());
    }

    private static void alterar() throws SQLException, ClassNotFoundException {
        int idInstrutor = Integer.parseInt(JOptionPane.showInputDialog("ID Do Instrutor"));
        String nome = JOptionPane.showInputDialog("Nome");
        String RG = JOptionPane.showInputDialog("RG");
        String dataDeNascimento = JOptionPane.showInputDialog("Data De Nascimento");
        String titulacao = JOptionPane.showInputDialog("Titulação");
        Instrutor sisEnt = new Instrutor(idInstrutor ,nome,  RG,  dataDeNascimento, titulacao);
        ControllerInstrutor contSis = new ControllerInstrutor();
        Instrutor sisSaida = contSis.alterar(sisEnt);
        JOptionPane.showMessageDialog(null,sisSaida.toString());
    }

    private static void buscar() throws SQLException, ClassNotFoundException {
        int idInstrutor = Integer.parseInt(JOptionPane.showInputDialog("ID Do Instrutor"));
        Instrutor sisEnt = new Instrutor(idInstrutor);
        ControllerInstrutor contSis = new ControllerInstrutor();
        Instrutor sisSaida = contSis.buscar(sisEnt);
        JOptionPane.showMessageDialog(null,sisSaida.toString());
    }

    private static void excluir() throws SQLException, ClassNotFoundException {
        int idInstrutor = Integer.parseInt(JOptionPane.showInputDialog("ID Do Instrutor"));
        Instrutor sisEnt = new Instrutor(idInstrutor);
        ControllerInstrutor contSis = new ControllerInstrutor();
        Instrutor sisSaida = contSis.excluir(sisEnt);
        JOptionPane.showMessageDialog(null,sisSaida.toString());
    }

    private static void listar() throws SQLException, ClassNotFoundException {
        String nome = JOptionPane.showInputDialog("Nome");
        Instrutor sisEnt = new Instrutor(nome);
        ControllerInstrutor contSis = new ControllerInstrutor();
        List<Instrutor> listaInstrutor = contSis.listar(sisEnt);
        for (Instrutor sisSaida : listaInstrutor) {
            JOptionPane.showMessageDialog(null,sisSaida.toString());
        }
    }


}