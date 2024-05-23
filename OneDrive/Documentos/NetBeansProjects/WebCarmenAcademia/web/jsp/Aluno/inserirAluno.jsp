<%-- 
    Document   : inserirAluno
    Created on : 23 de mai. de 2024, 13:14:48
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - ALUNO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR ALUNO</h1>
        <form name="inserirAluno" action="validaInserirAluno.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            DataDaMatricula: <input type="text" name="SERVIDOR" value=""> <br>
            DataDeNascimento: <input type="text" name="SERVIDOR" value=""> <br>
            Endereco: <input type="text" name="SERVIDOR" value=""> <br>
            Altura: <input type="text" name="STATUS" value=""> <br>
            Peso: <input type="text" name="VERSAO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
