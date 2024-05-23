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
<<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA MATRICULA</title>
    <body>
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

                            
                            <td><a href="excluirMatricula.jsp?<%=url + sisSaida.getIdMatricula()%>">Excluir</a></td>
                            <td><a href="alterarMatricula.jsp?<%=url + sisSaida.getIdMatricula()%>">Alterar</a></td>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>
