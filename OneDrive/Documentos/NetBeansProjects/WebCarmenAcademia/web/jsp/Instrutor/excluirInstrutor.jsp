<%-- 
    Document   : excluirInstrutor
    Created on : 23 de mai. de 2024, 13:55:21
    Author     : ryanv
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Instrutor"%>
<%@page import="carmenacademia.controller.ControllerInstrutor"%>

<%
    String cod = request.getParameter("CODIGODOINSTRUTOR");
    int codigoDaMatricula = Integer.parseInt(cod);
    Instrutor sis = new Instrutor(codigoDaMatricula);
    ControllerInstrutor usuCont = new ControllerInstrutor();
    usuCont.excluir(sis);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarInstrutor.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>