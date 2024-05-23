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
            Data Da Matricula: <input type="text" name="DATADAMATRICULA" value=""> <br>
            Data De Nascimento: <input type="text" name="DATADENASCIMENTO" value=""> <br>
            Endereco: <input type="text" name="ENDERECO" value=""> <br>
            Telefone: <input type="text" name="TELEFONE" value=""> <br>
            Altura: <input type="text" name="ALTURA" value=""> <br>
            Peso: <input type="text" name="PESO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
