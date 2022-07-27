<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ll.exam.article.dto.ArticleDto" %>

<%
    List<ArticleDto> articles = (List<ArticleDto>) request.getAttribute("articles");
%>

<style>
div{
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

<h1>게시물 리스트</h1>




    <% for (ArticleDto article : articles) { %>

    <div>
        <span><%=article.getId()%>.</span>
        <span><a href="/usr/article/detail/free/<%=article.getId()%>"><%=article.getTitle()%></a></span>
        <span class="delete"><a onclick="if ( !confirm('정말로 삭제하시겠습니까?') ) return false;"
           href="/usr/article/remove/free/<%=article.getId()%>">삭제</a>
        <a href="/usr/article/modify/free/<%=article.getId()%>">수정</a></span>
    </div>
    <% } %>
</ul>
