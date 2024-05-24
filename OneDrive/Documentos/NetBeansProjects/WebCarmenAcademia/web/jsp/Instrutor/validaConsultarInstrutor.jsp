<%-- 
    Document   : validaConsultarInstrutor
    Created on : 23 de mai. de 2024, 15:01:35
    Author     : ryanv
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Instrutor"%>
<%@page import="carmenacademia.controller.ControllerInstrutor"%>

<%
    String nome = request.getParameter("NOME");
    Instrutor sis = new Instrutor(nome);
    ControllerInstrutor siscont = new ControllerInstrutor();
    List<Instrutor> listaInstrutor = siscont.listar(sis);
    String url = "PBUSCA=" + sis.getNome() + "&CODIGODOINSTRUTOR=";
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <head>
        <title>LISTA INSTRUTORES</title>
        <!-- Include Materialize CSS and JS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1 class="center-align">Lista de Instrutores</h1>
            <table class="striped responsive-table">
                <thead>
                    <tr>
                        <th data-field="CodigoDoInstrutor">Código do Instrutor</th>
                        <th data-field="Nome">Nome</th>
                        <th data-field="Rg">RG</th>
                        <th data-field="DataDeNascimento">Data de Nascimento</th>
                        <th data-field="Titulacao">Titulação</th>
                        <th data-field="Excluir">Excluir</th>
                        <th data-field="Alterar">Alterar</th>
                    </tr>
                </thead>
                <% if (!(listaInstrutor.isEmpty())) { %>    
                    <tbody>
                        <% for (Instrutor sisSaida : listaInstrutor) { %>
                            <tr>
                                <td><%=sisSaida.getIdInstrutor()%></td>
                                <td><%=sisSaida.getNome()%></td>
                                <td><%=sisSaida.getRG()%></td> 
                                <td><%=sisSaida.getDataDeNascimento()%></td>
                                <td><%=sisSaida.getTitulacao()%></td>                            
                                <td><a href="excluirInstrutor.jsp?<%=url + sisSaida.getIdInstrutor()%>" class="btn red">Excluir</a></td>
                                <td><a href="alterarInstrutor.jsp?<%=url + sisSaida.getIdInstrutor()%>" class="btn blue">Alterar</a></td>
                            </tr>
                        <% } %>
                    </tbody>
                <% } %>
            </table>    

            <div class="row">
                <div class="col s12">
                     <a href="javascript:history.go(-1);" class="btn waves-effect waves-light">Voltar</a>
                    <a href="/WebCarmenAcademia/jsp/Menu/menu.jsp" class="btn waves-effect waves-light right red">Sair</a>
                </div>
            </div>
        </div>
    </body>
</html>
