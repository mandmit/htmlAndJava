<%-- 
    Document   : form
    Created on : 4 бер. 2021 р., 15:15:23
    Author     : Дмитрий
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/reset.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/styleMain.css">
        <title>Update form</title>
    </head>
    <body>
        <h1>Update data</h1>
        <form action="<%=request.getContextPath()%>/form" method="post">
            <input type="hidden" name="id" value="<%=request.getParameter("id")%>"/>
            <p>Name:
            <input type="text" name="name" value="<%=request.getParameter("name")%>"/></p>
            <p>Surname:
            <input type="text" name="surname" value="<%=request.getParameter("surname")%>"/></p>
            <p>Age:
            <input type="text" placeholder="integer" name="age" value="<%=request.getParameter("age")%>"/></p>
            <p>Experience in IT:
            <input type="text" placeholder="integer" name="stage" value="<%=request.getParameter("stage")%>"/></p>
            <p>Your hobby:
            <input type="text" name="hobby" value="<%=request.getParameter("hobby")%>"/></p>
            
            <input class="btns btnsadd" type="submit" value="Update data"/>
        </form>
    </body>
</html>
