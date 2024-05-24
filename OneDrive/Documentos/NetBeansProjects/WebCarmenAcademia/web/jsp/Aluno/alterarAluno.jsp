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
<head>
    <title>ALTERAR - ALUNO</title>
    <!-- Include Materialize CSS and JS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>
<body>
    <div class="container">
        <h1 class="center-align">ALTERAR ALUNO</h1>
        <form name="alterarAluno" action="validaAlterarAluno.jsp" method="post">
            <div class="row">
                <div class="input-field col s12">
                    <input type="text" id="nome" name="NOME" value="<%=sis.getNome()%>">
                    <label for="nome">Nome</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input type="text" id="datamatricula" name="DATADAMATRICULA" value="<%=sis.getDataDaMatricula()%>">
                    <label for="datamatricula">Data da Matrícula</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input type="text" id="datanascimento" name="DATADENASCIMENTO" value="<%=sis.getDataDeNascimento()%>">
                    <label for="datanascimento">Data de Nascimento</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input type="text" id="endereco" name="ENDERECO" value="<%=sis.getEndereco()%>">
                    <label for="endereco">Endereço</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input type="text" id="telefone" name="TELEFONE" value="<%=sis.getTelefone()%>">
                    <label for="telefone">Telefone</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input type="text" id="altura" name="ALTURA" value="<%=sis.getAltura()%>">
                    <label for="altura">Altura</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input type="text" id="peso" name="PESO" value="<%=sis.getPeso()%>">
                    <label for="peso">Peso</label>
                </div>
            </div>
            <input type="hidden" name="CODIGODAMATRICULA" value="<%=sis.getCodigoDaMatricula()%>">
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
