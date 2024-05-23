<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Instrutor"%>
<%@page import="carmenacademia.controller.ControllerInstrutor"%>

<%
    String cod = request.getParameter("CODIGODOINSTRUTOR");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String rg = request.getParameter("RG");
    String dataNascimento = request.getParameter("DATANASCIMENTO");
    String titulacao = request.getParameter("TITULACAO");
    String pbusca = request.getParameter("PBUSCA");

    Instrutor usu = new Instrutor(id,nome,rg,dataNascimento,titulacao);
    ControllerInstrutor usuCont = new ControllerInstrutor();
    usuCont.alterar(usu);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarInstrutor.jsp?RG=" + pbusca;
    response.sendRedirect(url);
%>