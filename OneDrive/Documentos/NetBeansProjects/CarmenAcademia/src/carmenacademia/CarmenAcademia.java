/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package carmenacademia;

import carmenacademia.view.ViewAluno;
import carmenacademia.view.ViewChamada;
import carmenacademia.view.ViewInstrutor;
import carmenacademia.view.ViewMatricula;
import carmenacademia.view.ViewTurma;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author mathe
 */
public class CarmenAcademia {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        menu();
 

}
public static void menu() throws SQLException, ClassNotFoundException {
        String msg = " 0 - Sair \n 1 - Aluno \n 2 - Instrutor \n 3 - Turma \n 4 - Matricula \n 5 - Chamada ";

        int num = Integer.parseInt(JOptionPane.showInputDialog(msg));
        switch (num) {
            case 0:
                int sair = JOptionPane.showConfirmDialog(null,"Deseja Sair");
                if (sair > 0) menu();
            break;
            case 1:
                ViewAluno.menu();
            break;
            
            case 2:
                ViewInstrutor.menu();
            break;
            
            case 3:
                ViewTurma.menu();
            break;
            
            case 4:
                ViewMatricula.menu();
            break;
            
            case 5:
                ViewChamada.menu();
            break;
        }
    }    
}
