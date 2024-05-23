<%-- 
    Document   : excluirAluno
    Created on : 23 de mai. de 2024, 13:33:26
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Matricula"%>
<%@page import="carmenacademia.controller.ControllerMatricula"%>

<%
    String cod = request.getParameter("IDMATRICULA");
    int idMatricula = Integer.parseInt(cod);
    Matricula sis = new Matricula(idMatricula);
    ControllerMatricula usuCont = new ControllerMatricula();
    usuCont.excluir(sis);
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "/WebCarmenAcademia/jsp/Menu/menu.jsp";
    response.sendRedirect(url);
%>