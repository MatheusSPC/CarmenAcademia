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
    String url = "PBUSCA=" + sis.getNome()+"&CODIGODAMATRICULA=" ;
%>

<!DOCTYPE html>
<<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA ALUNOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="CodigoDaMatricula">CodigoDaMatricula</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="DataDaMatricula">DataDaMatricula</th>
                  <th data-field="DataDeNascimento">DataDeNascimento</th>
                  <th data-field="Endereco">Endereco</th>
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
                            
                            <td><a href="excluirAluno.jsp?<%=url + sisSaida.getCodigoDaMatricula()%>">Excluir</a></td>
                            <td><a href="alterarAluno.jsp?<%=url + sisSaida.getCodigoDaMatricula()%>">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>