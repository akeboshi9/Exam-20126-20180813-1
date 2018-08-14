<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: ZYF
  Date: 2018/8/13
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Map<Integer,String>> list = (List<Map<Integer, String>>) session.getAttribute("list");
    int j = list.size();
%>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        function del() {

        }
    </script>
</head>
<body>
<table border="1" width="600px">
    <tr>
        <th>影片ID</th><th>标题</th><th>简介</th><th>语言</th><th>删除</th>
    </tr>
    <%
        for(int i = 0;i<j;i++){
            Map<Integer,String> map = list.get(i);
    %>
    <tr>
        <td><%=map.get(123).split("-")[0] %></td>
        <td><%=map.get(123).split("-")[1] %></td>
        <td><%=map.get(123).split("-")[2] %></td>
        <td><%=map.get(123).split("-")[3] %></td>
        <td><form action="Remove" method="post" enctype="application/x-www-form-urlencoded">
            <input type="hidden" style="display: block" name="id" value="<%=map.get(123).split("-")[0] %>">
            <input type="submit" value="删除">
            </form>
        </td>
        <td><button><a href="editFilm.jsp">编辑</a></button></td>
    </tr>
    <%
        }
    %>
</table>
<a href="newFilm.jsp">添加影片</a><br>
<a href="editFilm.jsp">编辑影片</a><br>
</body>
</html>
