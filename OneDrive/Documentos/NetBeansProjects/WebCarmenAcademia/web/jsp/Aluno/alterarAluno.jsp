<%-- 
    Document   : alterarAluno
    Created on : 23 de mai. de 2024, 13:55:01
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Aluno"%>
<%@page import="carmenacademia.controller.ControllerAluno"%>

<%
    String cod = request.getParameter("CODIGODAMATRICULA");
    int codigoDamatricula = Integer.parseInt(cod);
    Aluno sis = new Aluno(codigoDamatricula);
    ControllerAluno sisCont = new ControllerAluno();
    sis = sisCont.buscar(sis);
    String pbusca = request.getParameter("PBUSCA");

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - ALUNO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR ALUNO</h1>
        <form name="alterarAluno" action="validaAlterarAluno.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=sis.getNome()%>"> <br>
            dataDaMatricula: <input type="text" name="DATADAMATRICULA" value="<%=sis.getDataDaMatricula()%>"> <br>
            dataDeNascimento: <input type="text" name="DATADENASCIMENTO" value="<%=sis.getDataDeNascimento()%>"> <br>
            Endereco: <input type="text" name="ENDERECO" value="<%=sis.getEndereco()%>"> <br>
            Telefone: <input type="text" name="TELEFONE" value="<%=sis.getTelefone()%>"> <br>
            Altura: <input type="text" name="ALTURA" value="<%=sis.getAltura()%>"> <br>
            Peso: <input type="text" name="PESO" value="<%=sis.getPeso()%>"> <br>
            <input type="HIDDEN" name="CODIGODAMATRICULA" value="<%=sis.getCodigoDaMatricula()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>