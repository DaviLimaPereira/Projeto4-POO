<%-- 
    Document   : home
    Created on : 24/04/2019, 23:11:35
    Author     : davil
--%>

<%@page import="br.com.fatecpg.quiz.Banco"%>
<%@page import="br.com.fatecpg.quiz.Pergunta"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.lang.Object"%>
<%@page import="java.lang.Integer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    double nota = 0.0;
    if(request.getParameter("MathTest")!=null){
        int respostaCorreta = 0;
        for(Pergunta q: Banco.getMathQuiz()){
            String respostaUser = request.getParameter(q.getPergunta())
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
