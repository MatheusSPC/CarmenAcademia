<%-- 
    Document   : validaConsularAluno
    Created on : 23 de mai. de 2024, 13:31:42
    Author     : mathe
--%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Matricula"%>
<%@page import="carmenacademia.controller.ControllerMatricula"%>

<%
    String cod = request.getParameter("IDTURMA");
    int idTurma = Integer.parseInt(cod);
    Matricula sis = new Matricula(idTurma, "");
    ControllerMatricula siscont = new ControllerMatricula();
    List<Matricula> listaMatricula = siscont.listar(sis);
    String url = "PBUSCA=" + sis.getIdMatricula()+"&IDMATRICULA=" ;
%>

<!DOCTYPE html>
<html>
<%@include file="../../inc/materalizeWeb.inc" %>
<head>
    <title>LISTA MATRÍCULA</title>
    <!-- Include Materialize CSS and JS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>
<body>
    <div class="container">
        <h1 class="center-align">LISTA MATRÍCULA</h1>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IDMATRICULA">IDMATRICULA</th>
                  <th data-field="IDTURMA">IDTURMA</th>
                  <th data-field="IDALUNO">IDALUNO</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(listaMatricula.isEmpty())) { %>    
                <tbody>
                    <% for (Matricula sisSaida : listaMatricula) { %>
                    <tr>
                        <td><%=sisSaida.getIdMatricula()%></td>
                        <td><%=sisSaida.getIdTurma()%></td>
                        <td><%=sisSaida.getIdAluno()%></td>
                        <td><a href="excluirMatricula.jsp?<%=url + sisSaida.getIdMatricula()%>" class="waves-effect waves-light btn red">Excluir</a></td>
                        <td><a href="alterarMatricula.jsp?<%=url + sisSaida.getIdMatricula()%>" class="waves-effect waves-light btn">Alterar</a></td>
                    </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>
        <div class="row">
            <div class="col s12">
                <a href="javascript:history.go(-1);" class="btn waves-effect waves-light">Voltar</a>
                <a href="/WebCarmenAcademia/jsp/Menu/menu.jsp" class="btn waves-effect waves-light red right">Sair</a>
            </div>
        </div>
    </div>
</body>
</html>

