<%-- 
    Document   : alterarAluno
    Created on : 23 de mai. de 2024, 13:55:01
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Matricula"%>
<%@page import="carmenacademia.controller.ControllerMatricula"%>

<%
    String cod = request.getParameter("IDMATRICULA");
    int codigoDamatricula = Integer.parseInt(cod);
    Matricula sis = new Matricula(codigoDamatricula);
    ControllerMatricula sisCont = new ControllerMatricula();
    sis = sisCont.buscar(sis);
    String pbusca = request.getParameter("PBUSCA");

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - ALUNO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR ALUNO</h1>
        <form name="alterarMatricula" action="validaAlterarMatricula.jsp" method="post">
            Id Matricula <input type="text" name="IDMATRICULA" value="<%=sis.getIdMatricula()%>"> <br>
            Id Turma <input type="text" name="IDTURMA" value="<%=sis.getIdTurma()%>"> <br>
            Id Aluno <input type="text" name="IDALUNO" value="<%=sis.getIdAluno()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>