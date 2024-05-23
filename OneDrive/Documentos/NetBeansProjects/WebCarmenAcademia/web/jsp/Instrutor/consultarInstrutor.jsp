<%-- 
    Document   : consultarInstrutor
    Created on : 23 de mai. de 2024, 13:57:50
    Author     : ryanv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - INSTRUTOR</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR INSTRUTOR</h1>
       <form name="consultarInstrutor" action="validaConsultarInstrutor.jsp" method="post">
           NOME <input type="text" name ="NOME" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>