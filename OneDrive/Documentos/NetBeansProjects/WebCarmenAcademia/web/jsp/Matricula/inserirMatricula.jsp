<%-- 
    Document   : inserirAluno
    Created on : 23 de mai. de 2024, 13:14:48
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../../inc/materalizeWeb.inc" %>
<head>
    <title>INSERIR - ALUNO</title>
    <!-- Include Materialize CSS and JS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>
<body>
    <div class="container">
        <h1 class="center-align">INSERIR ALUNO</h1>
        <form name="inserirAluno" action="validaInserirMatricula.jsp" method="post">
            <div class="row">
                <div class="input-field col s12">
                    <input type="text" name="IDMATRICULA" value="">
                    <label for="idmatricula">Matrícula</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input type="text" name="IDTURMA" value="">
                    <label for="idturma">Turma</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input type="text" name="IDALUNO" value="">
                    <label for="idaluno">Aluno</label>
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

