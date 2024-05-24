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
    <head>
        <title>ALTERAR - INSTRUTOR</title>
        <!-- Include Materialize CSS and JS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body>
       <div class="container">
           <h1 class="center-align">ALTERAR INSTRUTOR</h1>
           <form name="alterarInstrutor" action="validaAlterarInstrutor.jsp" method="post">
               <div class="row">
                   <div class="input-field col s12">
                       <input type="text" id="nome" name="NOME" value="<%=sis.getNome()%>">
                       <label for="nome">Nome</label>
                   </div>
               </div>
               <div class="row">
                   <div class="input-field col s12">
                       <input type="text" id="rg" name="RG" value="<%=sis.getRG()%>">
                       <label for="rg">RG</label>
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
                       <input type="text" id="titulacao" name="TITULACAO" value="<%=sis.getTitulacao()%>">
                       <label for="titulacao">Titulação</label>
                   </div>
               </div>
               <input type="hidden" name="CODIGODOINSTRUTOR" value="<%=sis.getIdInstrutor()%>">
               <input type="hidden" name="PBUSCA" value="<%=pbusca%>">
               <div class="row">
                   <div class="col s12">
                       <button type="submit" class="btn waves-effect waves-light">OK</button>
                       <a href="javascript:history.go(-1);" class="btn waves-effect waves-light right red">Cancelar</a>
                   </div>
               </div>
           </form>
       </div>
    </body>
</html>

