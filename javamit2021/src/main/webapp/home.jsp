<%-- 
    Document   : index
    Created on : 3 лют. 2021 р., 20:52:49
    Author     : Дмитрий
--%>

<%@page import="java.util.List"%>
<%@page import="org.obrii.mit.dp2021.manilo.javaproject1.springCrud.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/reset.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/styleMain.css">
        <title>Manilo Dmytro</title>
    </head>
    <body>
        <div class="wrapper">
            <h1>Welcome to main page</h1>
            <div>
                <form action="<%=request.getContextPath()%>/" method="get">
                    <input name="filter" type="text"%>
                    <input class="btns btnsadd" type="submit" value="Filter"/>
                </form>
                <h1>Data List</h1>
                <%List<Users> dataList = (List<Users>) request.getAttribute("data");%>

                <table>
                    <tr>
                        <th>name</th>
                        <th>surname</th>
                        <th>age</th>
                        <th>experience</th>
                        <th>hobby</th>
                        <th>update</th>
                        <th>delete</th>
                    </tr>
                    <%for (Users datas : dataList) {%>
                    <tr>
                        <td><%=datas.getName()%></td>
                        <td><%=datas.getSurname()%></td>
                        <td><%=datas.getAge()%></td>
                        <td><%=datas.getStage()%></td>
                        <td><%=datas.getHobby()%></td>
                        <td>
                            <form action="form_update.jsp" method="post">
                                <input type="hidden" name="id" value="<%=datas.getId()%>"/>
                                <input type="hidden" name="name" value="<%=datas.getName()%>"/>
                                <input type="hidden" name="surname" value="<%=datas.getSurname()%>"/>
                                <input type="hidden" placeholder="integer" name="age" value="<%=datas.getAge()%>"/>
                                <input type="hidden" placeholder="integer" name="stage" value="<%=datas.getStage()%>"/>
                                <input class="btns" type="hidden" name="hobby" value="<%=datas.getHobby()%>"/>
                                <input class="btns btnsupd" type="submit" value="Update"/>
                            </form>
                        </td>
                        <td>
                            <form action="<%=request.getContextPath()%>/form" method="get">
                                <input type="hidden" name="id" value="<%=datas.getId()%>"/>
                                <input class="btns btnsdel" type="submit" value="Delete"/>
                            </form>
                        </td>
                    </tr>
                    <%}%>
                </table>
            </div>
                <form action="form.jsp" method="get">
                <input class="btns btnsadd" type="submit" value="Add data"/>
            </form>
        </div>
    </body>
</html>
