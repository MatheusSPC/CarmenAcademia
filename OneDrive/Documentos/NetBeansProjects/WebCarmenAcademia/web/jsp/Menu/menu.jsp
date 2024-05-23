<%-- 
    Document   : menu
    Created on : 22 de mai. de 2024, 11:04:47
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA</title>

    <body>
        
        <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Manter Aluno</a>        
        <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Manter Instrutor</a>   
        <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Manter Turma</a> 
        <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown4'>Manter Matricula</a>   
        <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown5'>Manter Chamada</a>  
        
        <ul id='dropdown1' class='dropdown-content'>
            <li><a href="../Aluno/inserirAluno.jsp"> Inserir - Aluno </a></li>
            <li><a href="../Aluno/consultarAluno.jsp"> Consultar - Aluno </a></li>
        </ul>
        
         <ul id='dropdown2' class='dropdown-content'>
            <li><a href="../Instrutor/inserirInstrutor.jsp"> Inserir - Instrutor </a></li>
            <li><a href="../Instrutor/consultarInstrutor.jsp"> Consultar - Instrutor </a></li>
        </ul>
        
        <ul id='dropdown3' class='dropdown-content'>
            <li><a href="../Turma/inserirTurma.jsp"> Inserir - Turma </a></li>
            <li><a href="../Turma/consultarTurma.jsp"> Consultar - Turma </a></li>
        </ul>
        
         <ul id='dropdown4' class='dropdown-content'>
            <li><a href="../Matricula/inserirMatricula.jsp"> Inserir - Matricula</a></li>
            <li><a href="../Matricula/consultarMatricula.jsp"> Consultar - Matricula </a></li>
        </ul>
        
         <ul id='dropdown5' class='dropdown-content'>
            <li><a href="../Chamada/inserirChamada.jsp"> Inserir - Chamada </a></li>
            <li><a href="../Chamada/consultarChamada.jsp"> Consultar - Chamada </a></li>
        </ul>
        
    </body>
</html>