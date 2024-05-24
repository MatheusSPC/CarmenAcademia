<%-- 
    Document   : validaConsularAluno
    Created on : 23 de mai. de 2024, 13:31:42
    Author     : mathe
--%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Aluno"%>
<%@page import="carmenacademia.controller.ControllerAluno"%>

<%
    String nome = request.getParameter("NOME");
    Aluno sis = new Aluno(nome);
    ControllerAluno siscont = new ControllerAluno();
    List<Aluno> listaAluno = siscont.listar(sis);
    String url = "PBUSCA=" + sis.getNome() + "&CODIGODAMATRICULA=";
%>

<!DOCTYPE html>
<html>
<%@include file="../../inc/materalizeWeb.inc" %>
<head>
    <title>LISTA ALUNOS</title>
    <!-- Include Materialize CSS and JS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</head>
<body>
    <div class="container">
        <h1 class="center-align">LISTA DE ALUNOS</h1>
        <table class="striped responsive-table">
            <thead>
                <tr>
                    <th data-field="CodigoDaMatricula">Código da Matrícula</th>
                    <th data-field="Nome">Nome</th>
                    <th data-field="DataDaMatricula">Data da Matrícula</th>
                    <th data-field="DataDeNascimento">Data de Nascimento</th>
                    <th data-field="Endereco">Endereço</th>
                    <th data-field="Telefone">Telefone</th>
                    <th data-field="Altura">Altura</th>
                    <th data-field="Peso">Peso</th>
                    <th data-field="Excluir">Excluir</th>
                    <th data-field="Alterar">Alterar</th>
                </tr>
            </thead>
            <% if (!(listaAluno.isEmpty())) { %>    
                <tbody>
                    <% for (Aluno sisSaida : listaAluno) { %>
                        <tr>
                            <td><%=sisSaida.getCodigoDaMatricula()%></td>
                            <td><%=sisSaida.getNome()%></td>
                            <td><%=sisSaida.getDataDaMatricula()%></td>
                            <td><%=sisSaida.getDataDeNascimento()%></td>
                            <td><%=sisSaida.getEndereco()%></td>
                            <td><%=sisSaida.getTelefone()%></td> 
                            <td><%=sisSaida.getAltura()%></td> 
                            <td><%=sisSaida.getPeso()%></td> 
                            <td><a href="excluirAluno.jsp?<%=url + sisSaida.getCodigoDaMatricula()%>" class="btn waves-effect waves-light red">Excluir</a></td>
                            <td><a href="alterarAluno.jsp?<%=url + sisSaida.getCodigoDaMatricula()%>" class="btn waves-effect waves-light">Alterar</a></td>
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

