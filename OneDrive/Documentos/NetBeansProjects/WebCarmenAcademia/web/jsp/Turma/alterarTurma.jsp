<%-- 
    Document   : alterarAluno
    Created on : 23 de mai. de 2024, 13:59:12
    Author     : Lexy
--%>
<%@page import="carmenacademia.model.bean.Turma"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.controller.ControllerTurma"%>

<%
    String cod = request.getParameter("IdTurma");
    int IdTurma = Integer.parseInt(cod);
    Turma sis = new Turma(IdTurma);
    ControllerTurma sisCont = new ControllerTurma();
    sis = sisCont.buscar(sis);
    String pbusca = request.getParameter("PBUSCA");
%>
<<%@include file="../../inc/materalizeWeb.inc" %>
<head>
    <title>ALTERAR - TURMA</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>
    <body>
        <div class="container">
        <h1 class="center-align">ALTERAR TURMA</h1>
        <form name="alterarTurma" action="validaAlterarTurma.jsp" method="post">
            <div class="row">
                <div class="input-field col s12">
                       <input type="text" id="IdTurma" name="Turma" value="<%=sis.getIdTurma()%>">
                       <label for="IdTurma">TURMA</label>
                </div>
                     <div class="row">
                <div 
                    class="input-field col s12">
                       <input type="text" id="IdInstrutor" name="Instrutor" value="<%=sis.getIdInstrutor()%>">
                       <label for="IdInstrutor">Instrutor</label>
                </div>
                 </div> 

                <div class="row">
                <div class="input-field col s12">
                       <input type="text" id="horario" name="horario" value="<%=sis.getHorario()%>">
                       <label for="horario">Horario</label>
                </div>
               </div>
                <div class="row">
                <div class="input-field col s12">
                       <input type="text" id="dataInicio" name="dataInicio" value="<%=sis.getDataInicio()%>">
                       <label for="dataInicio">Data Inicio</label>
                </div>
               </div>
               <div class="row">
                <div class="input-field col s12">
                       <input type="text" id="dataFim" name="dataFim" value="<%=sis.getDataFim()%>">
                       <label for="dataFim">Data Fim</label>
                </div>
               </div>
                <div class="row">
                   <div class="input-field col s12">
                       <input type="text" id="atividade" name="atividade" value="<%=sis.getDataFim()%>">
                       <label for="atividade">atividade</label>
                   </div>
               </div>
                <div class="row">
                <div class="col s12">
                    <button type="submit" class="btn waves-effect waves-light">OK</button>
                    <a href="javascript:history.go(-1);" class="btn waves-effect waves-light red right">Cancelar</a>
                </div>
            </div>
    </body>
</html>
