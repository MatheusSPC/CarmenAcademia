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
    String cod = request.getParameter("IDMATRICULA");
    int idMatricula = Integer.parseInt(cod);
    Matricula sis = new Matricula(idMatricula);
    ControllerMatricula siscont = new ControllerMatricula();
    List<Matricula> listaMatricula = siscont.listar(sis);
%>

<!DOCTYPE html>
<<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA MATRICULA</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IDMATRICULA">Id</th>
                  <th data-field="IDTURMA">Nome</th>
                  <th data-field="IDALUNO">Servidor</th>

              </tr>
            </thead>
            <% if (!(listaMatricula.isEmpty())) { %>    
                <tbody>
                    <% for (Matricula sisSaida : listaMatricula) { %>
                    <tr>
                            <td><%=sisSaida.getIdMatricula()%></td>
                            <td><%=sisSaida.getIdTurma()%></td>
                            <td><%=sisSaida.getIdAluno()%></td>

                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>
