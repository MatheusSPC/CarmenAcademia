<%-- 
    Document   : inserirInstrutor
    Created on : 23 de mai. de 2024, 13:57:11
    Author     : ryanv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <title>INSERIR - INSTRUTOR</title>
        <!-- Include Materialize CSS and JS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1 class="center-align">INSERIR INSTRUTOR</h1>
            <form name="inserirInstrutor" action="validaInserirInstrutor.jsp" method="post">
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="nome" name="NOME" value="">
                        <label for="nome">Nome</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="rg" name="RG" value="">
                        <label for="rg">RG</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="datanascimento" name="DATANASCIMENTO" value="">
                        <label for="datanascimento">Data de Nascimento</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="titulacao" name="TITULACAO" value="">
                        <label for="titulacao">Titulação</label>
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

