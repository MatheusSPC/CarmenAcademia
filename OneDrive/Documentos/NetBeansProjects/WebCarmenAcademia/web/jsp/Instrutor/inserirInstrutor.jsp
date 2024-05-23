<%-- 
    Document   : inserirInstrutor
    Created on : 23 de mai. de 2024, 13:57:11
    Author     : ryanv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - INSTRUTOR</title>
    <body>
       <div class="container"/>
        <h1>INSERIR INSTRUTOR</h1>
        <form name="inserirInstrutor" action="validaInserirInstrutor.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            RG: <input type="text" name="RG" value=""> <br>
            DataDeNascimento: <input type="text" name="DATANASCIMENTO" value=""> <br>
            Titulação: <input type="text" name="TITULACAO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
