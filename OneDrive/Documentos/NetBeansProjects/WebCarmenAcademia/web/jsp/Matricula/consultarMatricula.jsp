<%-- 
    Document   : consultarAluno
    Created on : 23 de mai. de 2024, 13:31:22
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - Matricula</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR Matricula</h1>
       <form name="consultarMatricula" action="validaConsultarMatricula.jsp" method="post">
           ID MATRICULA <input type="text" name ="IDMATRICULA" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>