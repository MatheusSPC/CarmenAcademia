<%-- 
    Document   : inserirChamada
    Created on : 23 de mai. de 2024, 13:14:48
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <title>INSERIR - CHAMADA</title>
        <!-- Include Materialize CSS and JS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1 class="center-align">INSERIR CHAMADA</h1>
            <form name="inserirChamada" action="validaInserirChamada.jsp" method="post">
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="idMatricula" name="IDMATRICULA" value="">
                        <label for="nome">ID da Matricula</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="idAluno" name="IDALUNO" value="">
                        <label for="datamatricula">ID do Aluno</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="presente" name="PRESENTE" value="">
                        <label for="datamatricula">Presente</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input type="text" id="dataChamada" name="DATADACHAMADA" value="">
                        <label for="datamatricula">Data da Chamada</label>
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
