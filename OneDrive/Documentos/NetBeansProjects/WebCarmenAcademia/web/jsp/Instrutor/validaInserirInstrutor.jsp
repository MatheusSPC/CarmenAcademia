<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Instrutor"%>
<%@page import="carmenacademia.controller.ControllerInstrutor"%>

<%
    String nome = request.getParameter("NOME");
    String rg = request.getParameter("RG");
    String dataNascimento = request.getParameter("DATANASCIMENTO");
    String titulacao = request.getParameter("TITULACAO");
    Instrutor usu = new Instrutor(nome, rg, dataNascimento, titulacao);
    ControllerInstrutor usucont = new ControllerInstrutor();
    usucont.inserir(usu);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirInstrutor.jsp";
    response.sendRedirect(url);
%>
