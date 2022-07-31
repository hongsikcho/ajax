<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ll.exam.article.dto.ArticleDto" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
    .body {
        display: flex;
        font-size: 12px;
    }

    text:hover {
        text-decoration: underline;
    }

    span {
        width: 33%;

    }

    a {
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
        color: red;
    }

    .delete {
        text-align: end;
    }
</style>
<html style="width:700px; margin: auto;">
<%@ include file="../common/header.jsp" %>

<script>
    let article_lastId = 0;
    function Atricle_loadMore(){
        fetch(`/usr/article/getArticles/free?fromId=${article_lastId}`)
        .then(data => data.json())
        .then(responseData => {
            console.log(responseData);
            for(const key in responseData.data){
                const article = responseData.data[key];
                $('.articles').append(`
            <li>\${article.title}</li>
        `);
        }
        });

    }
</script>
<section>
    <div class="container px-3 mx-auto">
        <h1 class="font-bold text-lg">
            게시물 리스트(오토)
        </h1>

        <ul class="articles mt-5">

        </ul>

        <hr>

        <button class="btn btn-sm" onclick="Atricle_loadMore();">불러오기</button>
    </div>
</section>

</html>

