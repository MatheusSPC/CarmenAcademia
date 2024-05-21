/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.view;

import carmenacademia.controller.ControllerMatricula;
import carmenacademia.model.bean.Matricula;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @Matheuszin
 */
public class ViewMatricula {
    
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
        int idTurma = Integer.parseInt(JOptionPane.showInputDialog("ID DA TURMA"));
        int idAluno = Integer.parseInt(JOptionPane.showInputDialog("ID DO ALUNO"));
        Matricula usuEnt = new Matricula(idTurma, idAluno);
        ControllerMatricula contUsu = new ControllerMatricula();
        Matricula usuSaida = contUsu.inserir(usuEnt);
        JOptionPane.showMessageDialog(null,usuSaida.toString());
    }

    private static void alterar() throws SQLException, ClassNotFoundException {
        int idMatricula = Integer.parseInt(JOptionPane.showInputDialog("ID DA TURMA"));
        int idTurma = Integer.parseInt(JOptionPane.showInputDialog("ID DO INSTRUTOR"));
        int idAluno = Integer.parseInt(JOptionPane.showInputDialog("ID DO INSTRUTOR"));
        Matricula usuEnt = new Matricula(idMatricula,idTurma, idAluno);
        ControllerMatricula contUsu = new ControllerMatricula();
        Matricula usuSaida = contUsu.alterar(usuEnt);
        JOptionPane.showMessageDialog(null,usuSaida.toString());
    }

    private static void buscar() throws SQLException, ClassNotFoundException {
        int idMatricula = Integer.parseInt(JOptionPane.showInputDialog("ID DA MATRICULA"));
        Matricula usuEnt = new Matricula(idMatricula);
        ControllerMatricula contUsu = new ControllerMatricula();
        Matricula usuSaida = contUsu.buscar(usuEnt);
        JOptionPane.showMessageDialog(null,usuSaida.toString());
        JOptionPane.showMessageDialog(null,usuSaida.getTurma().toString());
        JOptionPane.showMessageDialog(null,usuSaida.getAluno().toString());
    }

    private static void excluir() throws SQLException, ClassNotFoundException {
        int idMatricula = Integer.parseInt(JOptionPane.showInputDialog("ID DA MATRICULA"));
        Matricula usuEnt = new Matricula(idMatricula);
        ControllerMatricula contUsu = new ControllerMatricula();
        Matricula usuSaida = contUsu.excluir(usuEnt);
        JOptionPane.showMessageDialog(null,usuSaida.toString());
    }

    private static void listar() throws SQLException, ClassNotFoundException {
        int idMatricula = Integer.parseInt(JOptionPane.showInputDialog("ID DA TURMA"));
        String m ="";
        Matricula usuEnt = new Matricula(idMatricula, m);
        ControllerMatricula contUsu = new ControllerMatricula();
        List<Matricula> listaMatricula = contUsu.listar(usuEnt);
        for (Matricula usuSaida : listaMatricula) {
            JOptionPane.showMessageDialog(null,usuSaida.toString());
            JOptionPane.showMessageDialog(null,usuSaida.getAluno().toString());
        }
    }


}
