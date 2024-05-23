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
    String url = "PBUSCA=" + sis.getNome()+"&CODIGODOINSTRUTOR=" ;
%>

<!DOCTYPE html>
<<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA ALUNOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="CodigoDoInstrutor">CodigoDoInstrutor</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Rg">Rg</th>
                  <th data-field="DataDeNascimento">DataDeNascimento</th>
                  <th data-field="Titulacao">Titulacao</th>
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
                            <td><a href="excluirInstrutor.jsp?<%=url + sisSaida.getIdInstrutor()%>">Excluir</a></td>
                            <td><a href="alterarInstrutor.jsp?<%=url + sisSaida.getIdInstrutor()%>">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>