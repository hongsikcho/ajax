<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ll.exam.article.dto.ArticleDto" %>
<%@ page import="java.util.List" %>


<html style="width:600px; margin: auto;">
<%@ include file="../common/header.jsp"%>
<body>


<h1>게시물 리스트</h1>


<div>
    ID : ${article.id}
</div>
<div>
    TITLE : ${article.title}
</div>
<div>
    BODY : ${article.body}
</div>
</body>
</html>
