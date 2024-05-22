/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package carmenacademia.view;

import carmenacademia.controller.ControllerChamada;
import carmenacademia.model.bean.Chamada;
import java.sql.SQLException;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @Matheuszin
 */
public class ViewChamada {
    
    public static void menu() throws SQLException, ClassNotFoundException {
        String msg = " 1 - Inserir \n 2 - Alterar \n 3 - buscar \n 4 - excluir \n 5 - Listar" ;
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
        int idMatricula = Integer.parseInt(JOptionPane.showInputDialog("ID DA MATRICULA"));
        boolean presente = Boolean.parseBoolean(JOptionPane.showInputDialog("PRESENTE"));
        String data = JOptionPane.showInputDialog("DATA");
        Chamada usuEnt = new Chamada(idMatricula, presente, data);
        ControllerChamada contUsu = new ControllerChamada();
        Chamada usuSaida = contUsu.inserir(usuEnt);
        JOptionPane.showMessageDialog(null,usuSaida.toString());
    }

    private static void alterar() throws SQLException, ClassNotFoundException {
        int idChamada = Integer.parseInt(JOptionPane.showInputDialog("ID DA CHAMADA"));
        int idMatricula = Integer.parseInt(JOptionPane.showInputDialog("ID DO MATRICULA"));
        boolean presente = Boolean.getBoolean(JOptionPane.showInputDialog("PRESENTE"));
        String dataInicio = JOptionPane.showInputDialog("DATA");
        Chamada usuEnt = new Chamada(idChamada,idMatricula, presente, dataInicio);
        ControllerChamada contUsu = new ControllerChamada();
        Chamada usuSaida = contUsu.alterar(usuEnt);
        JOptionPane.showMessageDialog(null,usuSaida.toString());
    }

    private static void buscar() throws SQLException, ClassNotFoundException {
        int idChamada = Integer.parseInt(JOptionPane.showInputDialog("ID DA CHAMADA"));
        Chamada usuEnt = new Chamada(idChamada);
        ControllerChamada contUsu = new ControllerChamada();
        Chamada usuSaida = contUsu.buscar(usuEnt);
        JOptionPane.showMessageDialog(null,usuSaida.toString());
        JOptionPane.showMessageDialog(null,usuSaida.getMatricula().toString());

    }

    private static void excluir() throws SQLException, ClassNotFoundException {
        int idChamada = Integer.parseInt(JOptionPane.showInputDialog("ID DA CHAMADA"));
        Chamada usuEnt = new Chamada(idChamada);
        ControllerChamada contUsu = new ControllerChamada();
        Chamada usuSaida = contUsu.excluir(usuEnt);
        JOptionPane.showMessageDialog(null,usuSaida.toString());
    }

    private static void listar() throws SQLException, ClassNotFoundException {
        String data = JOptionPane.showInputDialog("NOME");
        Chamada usuEnt = new Chamada(data);
        ControllerChamada contUsu = new ControllerChamada();
        List<Chamada> listaUsuario = contUsu.listar(usuEnt);
        for (Chamada usuSaida : listaUsuario) {
            JOptionPane.showMessageDialog(null,usuSaida.toString());
            JOptionPane.showMessageDialog(null,usuSaida.getMatricula().toString());

        }
    }
}
