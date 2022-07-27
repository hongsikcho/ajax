<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ll.exam.article.dto.ArticleDto" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.body{
    display: flex;
    font-size: 12px;
}
text:hover{
    text-decoration: underline;
}
span{
    width:33%;

}
a{
    text-decoration: none;
}
a:hover{
    text-decoration: underline;
    color: red;
}
.delete{
    text-align: end;
}
</style>
<html style="width:700px; margin: auto;">
<%@ include file="../common/header.jsp"%>

<c:forEach items="${articles}" var="article">

    <div class="body">
        <span>${article.id}</span>

        <span><a href="/usr/article/detail/free/${article.id}">${article.title}</a></span>

        <span class="delete"><a onclick="if ( !confirm('정말로 삭제하시겠습니까?') ) return false;"
           href="/usr/article/remove/free/${article.id}">삭제</a>
        <a href="/usr/article/modify/free/${article.id}">수정</a></span>

    </div>
</c:forEach>
</html>

