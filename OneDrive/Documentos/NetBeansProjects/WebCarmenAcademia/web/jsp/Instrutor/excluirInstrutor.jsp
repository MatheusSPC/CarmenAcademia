<%-- 
    Document   : excluirInstrutor
    Created on : 23 de mai. de 2024, 13:55:21
    Author     : ryanv
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Instrutor"%>
<%@page import="carmenacademia.controller.ControllerInstrutor"%>

<%
    String cod = request.getParameter("IdInstrutor");
    int id = Integer.parseInt(cod);
    Instrutor usu = new Instrutor(id);
    ControllerInstrutor usuCont = new ControllerInstrutor();
    usuCont.excluir(usu);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarInstrutor.jsp?IdInstrutor="+ pbusca;
    response.sendRedirect(url);
%>