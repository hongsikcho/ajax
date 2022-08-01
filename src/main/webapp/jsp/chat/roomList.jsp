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
<%@ include file="../../common/header.jsp"%>

<c:forEach items="${rooms}" var="room">

    <div class="body">
        <span>${room.id}</span>

        <span><a href="/usr/chat/room/${room.id}">${room.body}</a></span>

        <span class="delete"><a onclick="if ( !confirm('정말로 삭제하시겠습니까?') ) return false;"
                                href="/usr/chat/delete/${room.id}">삭제</a>
        <a href="/usr/chat/modify/${room.id}">수정</a></span>

    </div>
</c:forEach>

</html>

