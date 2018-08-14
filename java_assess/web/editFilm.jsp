<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String film[] = request.getParameter("film").split("_");%>
<% List<String> list = (List<String>) session.getAttribute("list2");%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Insert title here</title>
</head>
<body>
<form method="post" action="Update" enctype="application/x-www-form-urlencoded">
    影片ID:<%= film[0]%><br><input style="display: none" name="id" value="<%=film[0] %>">
    影片标题：<input name="title" value="<%= film[1]%>"><br>
    影片描述：<input name="desc" value="<%= film[2]%>"><br>
    影片语言：<select name="lang">
    <% int i = list.size();
        for (int j = 0;j<i; j++){
    %><option value="<%=j%>"><%=list.get(j)%></option><%
    }%>
</select><br>
    <input type="submit" value="更改">
</form>
</body>
</html>