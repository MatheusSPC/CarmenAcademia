<%-- 
    Document   : validaConsularChamada
    Created on : 23 de mai. de 2024, 13:31:42
    Author     : mathe
--%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Chamada"%>
<%@page import="carmenacademia.controller.ControllerChamada"%>

<%
    String dataDaChamada = request.getParameter("DATADACHAMADA");
    Chamada sis = new Chamada(dataDaChamada);
    ControllerChamada siscont = new ControllerChamada();
    List<Chamada> listaChamada = siscont.listar(sis);
    String url = "PBUSCA=" + sis.getData()+ "&CODIGODAMATRICULA=";
%>

<!DOCTYPE html>
<html>
<%@include file="../../inc/materalizeWeb.inc" %>
<head>
    <title>LISTA CHAMADAS</title>
    <!-- Include Materialize CSS and JS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>
<body>
    <div class="container">
        <h1 class="center-align">LISTA DE CHAMADAS</h1>
        <table class="striped responsive-table">
            <thead>
                <tr>
                    <th data-field="IdChamada">ID da Chamada</th>
                    <th data-field="IdAluno">ID do Aluno</th>
                    <th data-field="IdMatricula">ID da Matricula</th>
                    <th data-field="DataDaChamada">Data da Chamada</th>
                    <th data-field="Excluir">Excluir</th>
                    <th data-field="Alterar">Alterar</th>
                </tr>
            </thead>
            <% if (!(listaChamada.isEmpty())) { %>    
                <tbody>
                    <% for (Chamada sisSaida : listaChamada) { %>
                        <tr>
                            <td><%=sisSaida.getIdChamada()%></td>
                            <td><%=sisSaida.getIdAluno()%></td>
                            <td><%=sisSaida.getIdMatricula()%></td>
                            <td><%=sisSaida.getData()%></td>
                            <td><a href="excluirChamada.jsp?<%=url + sisSaida.getIdChamada()%>" class="btn waves-effect waves-light red">Excluir</a></td>
                            <td><a href="alterarChamada.jsp?<%=url + sisSaida.getIdChamada()%>" class="btn waves-effect waves-light">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>
        <div class="col s12">
            <a href="javascript:history.go(-1);" class="btn waves-effect waves-light">Voltar</a>
            <a href="/WebCarmenAcademia/jsp/Menu/menu.jsp" class="btn waves-effect waves-light right red ">Sair</a>
        </div>
    </div>
</body>
</html>

