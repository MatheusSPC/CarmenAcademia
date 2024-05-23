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
    String url = "PBUSCA=" + sis.getIdInstrutor()+"&NOME=" ;
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA INSTRUTORES</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="rg">Rg</th>
                  <th data-field="DataNascimento">Data de Nascimento</th>
                  <th data-field="Titulacao">Titulacao</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(listaInstrutor.isEmpty())) { %>    
                <tbody>
                    <% for (Instrutor ageSaida : listaInstrutor) { %>
                    <tr>
                            <td><%=ageSaida.getIdInstrutor()%></td>
                            <td><%=ageSaida.getNome()%></td>
                            <td><%=ageSaida.getRG()%></td>
                            <td><%=ageSaida.getDataDeNascimento()%></td>
                            <td><%=ageSaida.getTitulacao()%></td>
                            <td><a href="excluirInstrutor.jsp?<%=url + ageSaida.getIdInstrutor()%>">Excluir</a></td>
                            <td><a href="alterarInstrutor.jsp?<%=url + ageSaida.getRG()%>">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>