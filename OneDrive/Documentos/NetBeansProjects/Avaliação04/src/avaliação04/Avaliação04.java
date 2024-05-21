/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package avaliação04;
import javax.swing.JOptionPane;
/**
 *
 * @author mathe
 */
public class Avaliação04 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        ClasseDeControle controle = new ClasseDeControle(); 
        
        String[] options = {"Questão 1", "Questão 2","Questão 3", "Questão 4", "Questão 5","Questão 6", "Questão 7", "Questão 8"};
        
        int escolha = JOptionPane.showOptionDialog(null, "Escolha qual a questão será efetuada!", "Escolha a opção",
        JOptionPane.DEFAULT_OPTION, JOptionPane.QUESTION_MESSAGE, null, options, options[0]);
        
        switch(escolha){
        
            case 0: 
            controle.dobro();
            break;
        
        
            case 1:
            controle.mediaNotas();
            break;
        
            case 2:
            controle.produto();
            break;
        
            case 3:
            controle.radiano();
            break;
        
            case 4:
            controle.MaiorNumero();
            break;
        
            case 5:
            controle.VerificarMes();
            break;
        
            case 6:
            controle.fatorial();
            break;
        
            case 7:
            controle.NumeroPrimo();
            break;

        }
        
    }
    
}
