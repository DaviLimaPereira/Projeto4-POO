<%-- 
    Document   : home
    Created on : 24/04/2019, 23:11:35
    Author     : davil
--%>

<%@page import="br.com.fatecpg.quiz.Banco"%>
<%@page import="br.com.fatecpg.quiz.Pergunta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    double nota = 0.0;
    if(request.getParameter("MathTest")!=null){
        int respostaCorreta = 0;
        for(Pergunta q: Banco.getMathQuiz()){
            String respostaUser = request.getParameter(q.getPergunta());
            if(respostaUser!=null){
                if(q.getResposta().equals(respostaUser)){
                    respostaCorreta++;
                }
            }
        }
        nota = (double)respostaCorreta / (double)Banco.getMathQuiz().size();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME - WEBQuiz</title>
    </head>
    <body>
        <h1>WEBQuiz</h1>
        <h2>Home</h2>
        <% if(request.getParameter("MathTest")==null){ %>
            <h3>Clique <a href="teste.jsp">aqui</a> para realizar seu teste.</h3>
        <% }else{ %>
            <h3>Sua nota foi <u><%=100*nota%>%</u></h3>
            <h3>Clique <a href="teste.jsp">aqui</a> para realizar seu teste.</h3>
        <%}%>
    </body>
</html>
