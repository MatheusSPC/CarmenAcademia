/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package avaliação04;

import javax.swing.JOptionPane;

/**
 *
 * @author mathe
 */
public class ClasseDeControle {

    public ClasseDeControle() {
    }   
    
    /* Questão 1*/
    public void dobro (){
        
        String x = JOptionPane.showInputDialog(null, "Valor: ");
        int numero = Integer.parseInt(x);
        JOptionPane.showMessageDialog(null, "O dobro de " + x + " é " + numero*2);
    }
    
    /* Questão 2*/
    public void mediaNotas(){
        
        String a = JOptionPane.showInputDialog(null, "Nota 1: ");
        String b = JOptionPane.showInputDialog(null, "Nota 2: ");
        String c = JOptionPane.showInputDialog(null, "Nota 3: ");
        String d = JOptionPane.showInputDialog(null, "Nota 4: ");
        
        float nota1 = Float.parseFloat(a);
        float nota2 = Float.parseFloat(b);
        float nota3 = Float.parseFloat(c);
        float nota4 = Float.parseFloat(d);
        
        float media = (nota1 + nota2 + nota3 + nota4)/4;
        JOptionPane.showMessageDialog(null, "A media das notas é: " + media);
        
    }
    
    /* Questão 3*/
    public float produto(){
        
        String a = JOptionPane.showInputDialog(null, "Digite o primeiro número: ");
        String b = JOptionPane.showInputDialog(null, "Digite o segundo número: ");
        
        float numero1 = Float.parseFloat(a);
        float numero2 = Float.parseFloat(b);
        JOptionPane.showMessageDialog(null, "O produto de "+ a +"*"+ b +" é: " + numero1*numero2);
        
        return numero1 * numero2;
    }
    
    /* Questão 4*/
    public void radiano(){
        
        String a = JOptionPane.showInputDialog(null, "Digite o grau desajado para a conversão em radianos: ");
        float grau = Float.parseFloat(a);
        float resultado = (float) (grau * 3.14159265359 / 180);
        
        JOptionPane.showMessageDialog(null, a +"°" + "em radianos é: " + resultado);
        
        
    }
    
    /* Questão 5*/
    public void MaiorNumero(){
        
        String a = JOptionPane.showInputDialog(null, "Digite um número: ");
        String b = JOptionPane.showInputDialog(null, "Digite outro número: ");
        
        int n1 = Integer.parseInt(a);
        int n2 = Integer.parseInt(b);
        
        if(n1>n2){
            JOptionPane.showMessageDialog(null, "O número "+ n1 +" é maior que " +n2);
        }
        else{
            JOptionPane.showMessageDialog(null, "O número "+ n2 +" é maior que " +n1);
        }
       
    }
    /* Questão 6*/
    public void VerificarMes(){
        
        String a = JOptionPane.showInputDialog(null, "Digite um número: ");
        
        int mes = Integer.parseInt(a);
        
        switch (mes){
            case 1:
                JOptionPane.showMessageDialog(null,"Janeiro");
                break;
            case 2:
                JOptionPane.showMessageDialog(null,"Fevereiro");
                break;
            case 3:
                JOptionPane.showMessageDialog(null,"Março");
                break;
            default:
                JOptionPane.showMessageDialog(null,"INVALIDO");
                break;
        }
    }

    /* Questão 7*/
    public void fatorial(){
        
        String a = JOptionPane.showInputDialog(null, "Digite um número: ");
        
        int x = Integer.parseInt(a);
        int f = x;
        while(x>1){
            f = f *(x-1); x--;
        }
        JOptionPane.showMessageDialog(null, f);
        
    }
    /* Questão 8*/
    public void NumeroPrimo(){
        
        String a = JOptionPane.showInputDialog(null, "Digite um número: ");
        
        int numero = Integer.parseInt(a);
        
        for (int j = 2; j < numero; j++) {
            if (numero % j == 0){
                JOptionPane.showMessageDialog(null, "O seu número não é primo");
                return;
            }
        
        }
        JOptionPane.showMessageDialog(null, "O seu número é primo");
    }
    
    
    
}