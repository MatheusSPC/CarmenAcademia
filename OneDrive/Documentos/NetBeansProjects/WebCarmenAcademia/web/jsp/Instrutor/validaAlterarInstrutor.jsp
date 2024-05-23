<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Instrutor"%>
<%@page import="carmenacademia.controller.ControllerInstrutor"%>

<%
    String cod = request.getParameter("CODIGODOINSTRUTOR");
    int codigoDaMatricula = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String rg = request.getParameter("RG");
    String dataDeNascimento = request.getParameter("DATADENASCIMENTO");
    String titulacao = request.getParameter("TITULACAO");
   

    Instrutor sis = new Instrutor(codigoDaMatricula, nome, rg,dataDeNascimento, titulacao);
    ControllerInstrutor siscont = new ControllerInstrutor();
    siscont.alterar(sis);
    String pbusca = request.getParameter("PBUSCA");
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarInstrutor.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>