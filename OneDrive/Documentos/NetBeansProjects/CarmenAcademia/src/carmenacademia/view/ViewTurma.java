/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.view;

import carmenacademia.controller.ControllerTurma;
import carmenacademia.model.bean.Turma;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @Matheuszin
 */
public class ViewTurma {
    
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
        int idInstrutor = Integer.parseInt(JOptionPane.showInputDialog("ID DO INSTRUTOR"));
        String horario = JOptionPane.showInputDialog("HORARIO");
        String dataInicio = JOptionPane.showInputDialog("DATA DO INICIO");
        String dataFim = JOptionPane.showInputDialog("DATA DO FIM");
        String atividade = JOptionPane.showInputDialog("ATIVIDADE");
        Turma usuEnt = new Turma(idInstrutor, horario, dataInicio, dataFim, atividade);
        ControllerTurma contUsu = new ControllerTurma();
        Turma usuSaida = contUsu.inserir(usuEnt);
        JOptionPane.showMessageDialog(null,usuSaida.toString());
    }

    private static void alterar() throws SQLException, ClassNotFoundException {
        int idTurma = Integer.parseInt(JOptionPane.showInputDialog("ID DA TURMA"));
        int idInstrutor = Integer.parseInt(JOptionPane.showInputDialog("ID DO INSTRUTOR"));
        String horario = JOptionPane.showInputDialog("HORARIO");
        String dataInicio = JOptionPane.showInputDialog("DATA DO INICIO");
        String dataFim = JOptionPane.showInputDialog("DATA DO FIM");
        String atividade = JOptionPane.showInputDialog("ATIVIDADE");
        Turma usuEnt = new Turma(idTurma,idInstrutor, horario, dataInicio, dataFim, atividade);
        ControllerTurma contUsu = new ControllerTurma();
        Turma usuSaida = contUsu.alterar(usuEnt);
        JOptionPane.showMessageDialog(null,usuSaida.toString());
    }

    private static void buscar() throws SQLException, ClassNotFoundException {
        int idTurma = Integer.parseInt(JOptionPane.showInputDialog("ID DA TURMA"));
        Turma usuEnt = new Turma(idTurma);
        ControllerTurma contUsu = new ControllerTurma();
        Turma usuSaida = contUsu.buscar(usuEnt);
        JOptionPane.showMessageDialog(null,usuSaida.toString());
        JOptionPane.showMessageDialog(null,usuSaida.getInstru().toString());

    }

    private static void excluir() throws SQLException, ClassNotFoundException {
        int idTurma = Integer.parseInt(JOptionPane.showInputDialog("ID DA TURMA"));
        Turma usuEnt = new Turma(idTurma);
        ControllerTurma contUsu = new ControllerTurma();
        Turma usuSaida = contUsu.excluir(usuEnt);
        JOptionPane.showMessageDialog(null,usuSaida.toString());
    }

    private static void listar() throws SQLException, ClassNotFoundException {
        String horario = JOptionPane.showInputDialog("HORARIO");
        Turma usuEnt = new Turma(horario);
        ControllerTurma contUsu = new ControllerTurma();
        List<Turma> listaUsuario = contUsu.listar(usuEnt);
        for (Turma usuSaida : listaUsuario) {
            JOptionPane.showMessageDialog(null,usuSaida.toString());
            JOptionPane.showMessageDialog(null,usuSaida.getInstru().toString());

        }
    }


}
