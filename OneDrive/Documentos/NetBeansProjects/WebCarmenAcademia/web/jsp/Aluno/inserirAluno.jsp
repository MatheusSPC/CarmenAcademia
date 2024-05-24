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
            <form name="inserirAluno" action="validaInserirAluno.jsp" method="post">
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="nome" name="NOME" value="">
                        <label for="nome">Nome</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="datamatricula" name="DATADAMATRICULA" value="">
                        <label for="datamatricula">Data da Matrícula</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="datanascimento" name="DATADENASCIMENTO" value="">
                        <label for="datanascimento">Data de Nascimento</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="endereco" name="ENDERECO" value="">
                        <label for="endereco">Endereço</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="telefone" name="TELEFONE" value="">
                        <label for="telefone">Telefone</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="altura" name="ALTURA" value="">
                        <label for="altura">Altura</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="peso" name="PESO" value="">
                        <label for="peso">Peso</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12">
                        <button type="submit" class="btn waves-effect waves-light">OK</button>
                        <a href="/WebCarmenAcademia/jsp/Menu/menu.jsp" class="btn waves-effect waves-light red right">Voltar ao Menu</a>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>


