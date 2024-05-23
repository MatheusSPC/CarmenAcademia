<%-- 
    Document   : alterarInstrutor
    Created on : 23 de mai. de 2024, 13:55:31
    Author     : ryanv
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Instrutor"%>
<%@page import="carmenacademia.controller.ControllerInstrutor"%>

<%
    String cod = request.getParameter("CODIGODOINSTRUTOR");
    int codigoDoInstrutor = Integer.parseInt(cod);
    Instrutor sis = new Instrutor(codigoDoInstrutor);
    ControllerInstrutor sisCont = new ControllerInstrutor();
    sis = sisCont.buscar(sis);
    String pbusca = request.getParameter("PBUSCA");

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - ALUNO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR ALUNO</h1>
        <form name="alterarInstrutor" action="validaAlterarInstrutor.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=sis.getNome()%>"> <br>
            RG: <input type="text" name="RG" value="<%=sis.getRG()%>"> <br>
            Data De Nascimento: <input type="text" name="DATADENASCIMENTO" value="<%=sis.getDataDeNascimento()%>"> <br>
            Titulacao: <input type="text" name="TITULACAO" value="<%=sis.getTitulacao()%>"> <br>
            <input type="HIDDEN" name="CODIGODOINSTRUTOR" value="<%=sis.getIdInstrutor()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>
