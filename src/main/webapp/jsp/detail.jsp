<%@ page import="com.ll.exam.article.dto.ArticleDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 홍식
  Date: 2022-07-26
  Time: 오후 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    ArticleDto article = (ArticleDto) request.getAttribute("article");
%>

<h1>게시물 리스트</h1>

<%if(article != null){%>
<div><%=article.getId()%></div>
<div><%=article.getTitle()%></div>
<div><%=article.getBody()%></div>
    <%}%>
</body>
</html>
