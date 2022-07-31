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
<section class="mt-5">
    <div class="container px-3 mx-auto">
        <h1 class="font-bold text-lg">테스트</h1>
        <script>
            function Article__loadLatest() {
                fetch('/usr/article/getArticles/free')
                    .then(data => data.json()) // JSON을 파싱
                    .then(responseData => {
                        // jquery 찾기 : $
                        const content = new Date() + ":"+ responseData.data[responseData.data.length -1].title;
                        $('.place-1').append(content + "<br />") ;
                    });
            }
        </script>
        <button onclick="Article__loadLatest();" class="btn btn-xs">최신글 가져오기</button>

        <div class="place-1 border-2 border-[red] min-h-[500px]">

        </div>
    </div>
</section>
</html>

