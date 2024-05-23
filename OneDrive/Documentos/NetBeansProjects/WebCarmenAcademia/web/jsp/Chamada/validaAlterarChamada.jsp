<%-- 
    Document   : validaAlterarAluno
    Created on : 23 de mai. de 2024, 13:55:42
    Author     : mathe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Aluno"%>
<%@page import="carmenacademia.controller.ControllerAluno"%>

<%
    String cod = request.getParameter("CODIGODAMATRICULA");
    int codigoDaMatricula = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String dataDaMatricula = request.getParameter("DATADAMATRICULA");
    String dataDeNascimento = request.getParameter("DATADENASCIMENTO");
    String endereco = request.getParameter("ENDERECO");
    String telefone = request.getParameter("TELEFONE");
    String altura = request.getParameter("ALTURA");
    String peso = request.getParameter("PESO");

    Aluno sis = new Aluno(codigoDaMatricula, nome, dataDaMatricula, dataDeNascimento, endereco, telefone, altura, peso);
    ControllerAluno siscont = new ControllerAluno();
    siscont.alterar(sis);
    String pbusca = request.getParameter("PBUSCA");
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarAluno.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>
