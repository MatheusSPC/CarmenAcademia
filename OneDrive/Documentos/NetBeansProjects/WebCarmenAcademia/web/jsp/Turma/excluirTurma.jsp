<%-- 
    Document   : ExcluirTurma
    Created on : 2 de jun. de 2024, 13:33:56
    Author     : Lexy
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="carmenacademia.model.bean.Turma"%>
<%@page import="carmenacademia.controller.ControllerTurma"%>

<%
    String cod = request.getParameter("IdTurma");
    int codigoDaTurma = Integer.parseInt(cod);
    Turma sis = new Turma(codigoDaTurma);
    ControllerTurma sisCont = new ControllerTurma();
    sisCont.excluir(sis);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarTurma.jsp?horario=" + pbusca;
    response.sendRedirect(url);
%>