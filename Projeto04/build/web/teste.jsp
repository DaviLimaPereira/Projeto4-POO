<%-- 
    Document   : teste
    Created on : 24/04/2019, 23:14:32
    Author     : davil
--%>

<%@page import="br.com.fatecpg.quiz.Banco"%>
<%@page import="br.com.fatecpg.quiz.Pergunta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TESTE - WEBQuiz</title>
    </head>
    <body>
        <h1>WEBQuiz</h1>
        <form action="home.jsp">
            <%for(Pergunta q: Banco.getMathQuiz()){%>
                <h3><%=q.getPergunta()%></h3>
                <%for(String alternativa: q.getAlternativa()){%>
                    <h4><input type="radio" name="<%=q.getPergunta()%>" value="<%=alternativa%>" /><%=alternativa%></h4>
                <%}%>
            <%}%>
            <input type="submit" name="MathTest" value="Enviar" />
        </form>
    </body>
</html>
