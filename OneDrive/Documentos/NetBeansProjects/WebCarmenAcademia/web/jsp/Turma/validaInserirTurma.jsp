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
    cod = request.getParameter("IdInstrutor");
    int codigoInstrutor = Integer.parseInt(cod);
    String horario = request.getParameter("horario");
    String dataInicio = request.getParameter("dataInicio");
    String dataFim = request.getParameter("dataFim");
    String atividade = request.getParameter("atividade");
    Turma sis = new Turma(codigoDaTurma, codigoInstrutor, horario, dataInicio, dataFim, atividade);
    ControllerTurma siscont = new ControllerTurma();
    siscont.inserir(sis);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirTurma.jsp";
    response.sendRedirect(url);
%>