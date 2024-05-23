<%-- 
    Document   : excluirAluno
    Created on : 23 de mai. de 2024, 13:33:26
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Aluno"%>
<%@page import="carmenacademia.controller.ControllerAluno"%>

<%
    String cod = request.getParameter("CODIGODAMATRICULA");
    int codigoDaMatricula = Integer.parseInt(cod);
    Aluno sis = new Aluno(codigoDaMatricula);
    ControllerAluno usuCont = new ControllerAluno();
    usuCont.excluir(sis);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarAluno.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>