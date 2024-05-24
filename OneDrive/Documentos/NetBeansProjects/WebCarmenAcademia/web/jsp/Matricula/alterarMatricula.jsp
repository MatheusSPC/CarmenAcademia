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
<head>
    <title>ALTERAR - ALUNO</title>
    <!-- Include Materialize CSS and JS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>
<body>
    <div class="container">
        <h1 class="center-align">ALTERAR MATRÍCULA</h1>
        <form name="alterarMatricula" action="validaAlterarMatricula.jsp" method="post">
            <div class="input-field">
                <input type="text" name="IDMATRICULA" value="<%=sis.getIdMatricula()%>">
                <label for="IDMATRICULA">ID Matrícula</label>
            </div>
            <div class="input-field">
                <input type="text" name="IDTURMA" value="<%=sis.getIdTurma()%>">
                <label for="IDTURMA">ID Turma</label>
            </div>
            <div class="input-field">
                <input type="text" name="IDALUNO" value="<%=sis.getIdAluno()%>">
                <label for="IDALUNO">ID Aluno</label>
            </div>
            <input type="hidden" name="PBUSCA" value="<%=pbusca%>">
            <div class="row">
                <div class="col s12">
                    <button type="submit" class="btn waves-effect waves-light">OK</button>
                    <a href="javascript:history.go(-1);" class="btn waves-effect waves-light red right">Cancelar</a>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
