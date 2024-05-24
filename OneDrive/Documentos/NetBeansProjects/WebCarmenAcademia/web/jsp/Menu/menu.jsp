<%-- 
    Document   : menu
    Created on : 22 de mai. de 2024, 11:04:47
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA</title>
    <!-- Include Materialize CSS and JS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        .centered-image {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .brand-logo{
             font-family: 'Roboto', sans-serif;
        }
        
        .dropdown-trigger{
             font-family: 'Roboto', sans-serif;
        }
        
        .dropdown-trigger:hover{
             background-color: darkblue !important;
        }
        
        
        .dropdown-content li:hover {
            background-color: lightgray !important;
        }
        dropdown-content font{
            font-family: 'Roboto', sans-serif;
        }
    </style>
</head>
<body>
    <!-- Navbar or Buttons for Dropdowns -->
    <div class="navbar-fixed">
        <nav class="black">
            <div class="container">
                <div class="nav-wrapper">
                    <a href="#" class="brand-logo">Academia Project</a>
                    
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li>
                            <a class='dropdown-trigger' href='#' data-target='dropdown1'>Manter Aluno</a>
                            <ul id='dropdown1' class='dropdown-content'>
                                <li><a href="../Aluno/inserirAluno.jsp">Inserir - Aluno</a></li>
                                <li><a href="../Aluno/consultarAluno.jsp">Consultar - Aluno</a></li>
                            </ul>
                        </li>
                        <li>
                            <a class='dropdown-trigger' href='#' data-target='dropdown2'>Manter Instrutor</a>
                            <ul id='dropdown2' class='dropdown-content'>
                                <li><a href="../Instrutor/inserirInstrutor.jsp">Inserir - Instrutor</a></li>
                                <li><a href="../Instrutor/consultarInstrutor.jsp">Consultar - Instrutor</a></li>
                            </ul>
                        </li>
                        <li>
                            <a class='dropdown-trigger' href='#' data-target='dropdown3'>Manter Turma</a>
                            <ul id='dropdown3' class='dropdown-content'>
                                <li><a href="../Turma/inserirTurma.jsp">Inserir - Turma</a></li>
                                <li><a href="../Turma/consultarTurma.jsp">Consultar - Turma</a></li>
                            </ul>
                        </li>
                        <li>
                            <a class='dropdown-trigger' href='#' data-target='dropdown4'>Manter Matricula</a>
                            <ul id='dropdown4' class='dropdown-content'>
                                <li><a href="../Matricula/inserirMatricula.jsp">Inserir - Matricula</a></li>
                                <li><a href="../Matricula/consultarMatricula.jsp">Consultar - Matricula</a></li>
                            </ul>
                        </li>
                        <li>
                            <a class='dropdown-trigger' href='#' data-target='dropdown5'>Manter Chamada</a>
                            <ul id='dropdown5' class='dropdown-content'>
                                <li><a href="../Chamada/inserirChamada.jsp">Inserir - Chamada</a></li>
                                <li><a href="../Chamada/consultarChamada.jsp">Consultar - Chamada</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

    <!-- Imagem Centralizada -->
    <div class="centered-image">
        <img src="/WebCarmenAcademia/img/AcademiaProjectCarmenLogo.png" alt="Academia Project Carmen Logo">
    </div>

    <!-- Initialize the dropdowns -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var dropdowns = document.querySelectorAll('.dropdown-trigger');
            M.Dropdown.init(dropdowns, {
                coverTrigger: false,
                constrainWidth: false
            });
        });
    </script>
</body>
</html>



