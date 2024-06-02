<%-- 
    Document   : consultarChamada
    Created on : 23 de mai. de 2024, 13:31:22
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="../../inc/materalizeWeb.inc" %>
<head>
    <title>CONSULTAR - CHAMADA</title>
    <!-- Include Materialize CSS and JS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>
<body>
    <div class="container">
        <h1 class="center-align">CONSULTAR CHAMADA</h1>
        <form name="consultarChamada" action="validaConsultarChamada.jsp" method="post">
            <div class="row">
                <div class="input-field col s12">
                    <input type="text" name="DATADACHAMADA" id="data">
                    <label for="data">Data da Chamada</label>
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                   <button type="submit" class="btn waves-effect waves-light ">Enviar</button>
                   <a href="/WebCarmenAcademia/jsp/Menu/menu.jsp" class="btn waves-effect waves-light right">Voltar</a>
                </div>
            </div>
        </form>
    </div>
</body>
</html>

