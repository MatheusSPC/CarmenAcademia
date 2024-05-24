<%-- 
    Document   : menu
    Created on : 22 de mai. de 2024, 11:04:47
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <title>SISTEMA</title>
        <!-- Include Materialize CSS and JS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body>
        <!-- Navbar or Buttons for Dropdowns -->
        <div class="container">
            <a class='dropdown-button btn' href='#' data-target='dropdown1'>Manter Aluno</a>        
            <a class='dropdown-button btn' href='#' data-target='dropdown2'>Manter Instrutor</a>   
            <a class='dropdown-button btn' href='#' data-target='dropdown3'>Manter Turma</a> 
            <a class='dropdown-button btn' href='#' data-target='dropdown4'>Manter Matricula</a>   
            <a class='dropdown-button btn' href='#' data-target='dropdown5'>Manter Chamada</a>  

            <!-- Dropdown Structure -->
            <ul id='dropdown1' class='dropdown-content'>
                <li><a href="../Aluno/inserirAluno.jsp">Inserir - Aluno</a></li>
                <li><a href="../Aluno/consultarAluno.jsp">Consultar - Aluno</a></li>
            </ul>

            <ul id='dropdown2' class='dropdown-content'>
                <li><a href="../Instrutor/inserirInstrutor.jsp">Inserir - Instrutor</a></li>
                <li><a href="../Instrutor/consultarInstrutor.jsp">Consultar - Instrutor</a></li>
            </ul>

            <ul id='dropdown3' class='dropdown-content'>
                <li><a href="../Turma/inserirTurma.jsp">Inserir - Turma</a></li>
                <li><a href="../Turma/consultarTurma.jsp">Consultar - Turma</a></li>
            </ul>

            <ul id='dropdown4' class='dropdown-content'>
                <li><a href="../Matricula/inserirMatricula.jsp">Inserir - Matricula</a></li>
                <li><a href="../Matricula/consultarMatricula.jsp">Consultar - Matricula</a></li>
            </ul>

            <ul id='dropdown5' class='dropdown-content'>
                <li><a href="../Chamada/inserirChamada.jsp">Inserir - Chamada</a></li>
                <li><a href="../Chamada/consultarChamada.jsp">Consultar - Chamada</a></li>
            </ul>
        </div>

        <!-- Initialize the dropdowns -->
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                var dropdowns = document.querySelectorAll('.dropdown-button');
                M.Dropdown.init(dropdowns, {
                    coverTrigger: false,
                    constrainWidth: false
                });
            });
        </script>
        
        <div class="image-container">
            <img src="https://media.tenor.com/d7jgDuI-rjIAAAAi/sonic-the-hedgehog-sonic.gif" alt="Imagem">
        </div>
    </body>
</html>
