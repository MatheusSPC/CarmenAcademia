<%-- 
    Document   : inserirTurma
    Created on : 23 de mai. de 2024, 13:57:07
    Author     : Lexy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <title>INSERIR - TURMA</title>
        <!-- Include Materialize CSS and JS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1 class="center-align">INSERIR TURMA</h1>
            <form name="inserirTurma" action="validaInserirTurma.jsp" method="post">
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="IdTurma" name="IdTurma" value="">
                        <label for="IdTurma">Turma</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="IdInstrutor" name="IdInstrutor" value="">
                        <label for="IdInstrutor">Instrutor</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="horario" name="horario" value="">
                        <label for="horario">Horario</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="dataInicio" name="dataInicio" value="">
                        <label for="dataInicio">Data Inicio</label>
                    </div>
                </div>
               <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="dataFim" name="dataFim" value="">
                        <label for="dataFim">Data Fim</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="atividade" name="atividade" value="">
                        <label for="atividade">Atividade</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12">
                        <input type="submit" class="btn waves-effect waves-light" name="Enviar" value="OK">
                        <a href="/WebCarmenAcademia/jsp/Menu/menu.jsp" class="btn waves-effect waves-light red right">Voltar ao Menu</a>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>