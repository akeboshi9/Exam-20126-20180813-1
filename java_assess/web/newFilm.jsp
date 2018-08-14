<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ZYF
  Date: 2018/8/13
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% List<String> list = (List<String>) session.getAttribute("list2");%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <br />
    <font color="purple" face="楷体" size="6">
        添加影片
    </font>
    <form method="post" action="Add" enctype="application/x-www-form-urlencoded">
        标题：<input name="title">
        简介：<input name="desc">
        语言：<select name="lang">
        <% int i = list.size();
            for (int j = 0;j<i; j++){
        %><option value="<%=j%>"><%=list.get(j)%></option><%
        }%>
    </select>
        <input type="submit">
    </form>
</center>
</body>
</html>
