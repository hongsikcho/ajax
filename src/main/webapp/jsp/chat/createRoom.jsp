<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ll.exam.chatRoom.dto.chatRoomDto" %>

<h1>채팅방 작성</h1>

<script>
    function chatRoomSave__submitForm(form) {
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
<form method="POST" action="/usr/chat/createRoom"onsubmit="chatRoomSave__submitForm(this); return false;">
    <div>
        <span>이름</span>
        <div>
            <input name="name" type="text" maxlength="50" placeholder="이름을 입력해주세요." />
        </div>
    </div>

    <div>
        <span>설명</span>
        <div>
            <input name="body" type="text" maxlength="300" placeholder="내용을 입력해주세요." />
        </div>
    </div>

    <div>
        <span>생성</span>
        <div>
            <input type="submit" value="생성" />
            <a href="/usr/chat/roomList">목록으로 가기</a>
        </div>
    </div>
</form>