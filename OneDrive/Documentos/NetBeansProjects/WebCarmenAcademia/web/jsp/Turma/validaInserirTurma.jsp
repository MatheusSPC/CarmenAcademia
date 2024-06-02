<%-- 
    Document   : validaInserirTurma
    Created on : 23 de mai. de 2024, 13:58:10
    Author     : Lexy
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Turma"%>
<%@page import="carmenacademia.controller.ControllerTurma"%>

<%
    String cod = request.getParameter("IdTurma");
    int codigoDaTurma = Integer.parseInt(cod);
    String instrutor = request.getParameter("INSTRUTOR");
    String dataInicio = request.getParameter("DATAINICIO");
    String dataFim = request.getParameter("DATAFIM");
    String atividade = request.getParameter("ATIVIDADE");
    Turma sis = new Turma(codigoDaTurma, instrutor, dataInicio, dataFim, atividade);
    ControllerTurma siscont = new ControllerTurma();
    siscont.inserir(sis);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirInstrutor.jsp";
    response.sendRedirect(url);
%>