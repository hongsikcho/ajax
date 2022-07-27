<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ll.exam.article.dto.ArticleDto" %>
<%@ page import="java.util.List" %>


<html style="width:600px; margin: auto;">
<%@ include file="../common/header.jsp"%>
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
