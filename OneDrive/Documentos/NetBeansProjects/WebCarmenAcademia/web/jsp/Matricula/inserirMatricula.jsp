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
        <form name="inserirAluno" action="validaInserirMatricula.jsp" method="post">
            Matricula <input type="text" name="IDMATRICULA" value=""> <br>
            Turma <input type="text" name="IDTURMA" value=""> <br>
            Aluno <input type="text" name="IDALUNO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
