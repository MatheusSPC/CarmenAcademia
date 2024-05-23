<%-- 
    Document   : consultarAluno
    Created on : 23 de mai. de 2024, 13:31:22
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - ALUNO</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR ALUNO</h1>
       <form name="consultarAluno" action="validaConsultarAluno.jsp" method="post">
           NOME <input type="text" name ="NOME" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>