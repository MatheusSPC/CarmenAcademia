<%-- 
    Document   : menu
    Created on : 22 de mai. de 2024, 11:04:47
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA </title>

    <body>

        <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>ManterAluno</a>        

        <ul id='dropdown1' class='dropdown-content'>
            <li><a href="../usuario/inserirUsuario.jsp"> InseriAluno </a></li>
            <li><a href="../usuario/consultarUsuario.jsp"> ConsultaAluno </a></li>
        </ul>

    </body>
</html>