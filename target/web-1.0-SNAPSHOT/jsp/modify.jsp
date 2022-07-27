<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ll.exam.article.dto.ArticleDto" %>
<html style="width:600px; margin: auto;">
<script>
    function ArticleSave__submitForm(form) {
        form.title.value = form.title.value.trim();
        if ( form.title.value.length == 0 ) {
            alert('제목을 입력해주세요.');
            form.title.focus();
            return;
        }
        form.body.value = form.body.value.trim();
        if ( form.body.value.length == 0 ) {
            alert('내용을 입력해주세요.');
            form.body.focus();
            return;
        }
        form.submit();
    }
</script>


<%@ include file="../common/header.jsp"%>
<%

%>

<h1>게시물 수정페이지</h1>


<form method="POST" action="/usr/article/modify/free/${article.id}"onsubmit="ArticleSave__submitForm(this); return false;">
    <div>
        <div>${article.id}번 글</div>
        <div>
            <input name="title" type="text" maxlength="50" placeholder="제목을 입력해주세요." />
        </div>
    </div>

    <div>
        <span>내용</span>
        <div>
            <input name="body" type="text" maxlength="300" placeholder="내용을 입력해주세요." />
        </div>
    </div>

    <div>
        <span>수정</span>
        <div>
            <input type="submit" value="수정" />
        </div>
    </div>
</form>
</html>