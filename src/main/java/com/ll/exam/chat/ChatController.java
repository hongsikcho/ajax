package com.ll.exam.chat;

import com.ll.exam.Rq;

public class ChatController {
    ChatService chatService;
    public ChatController(){
        chatService = new ChatService();
    }
    public void createRoom(Rq rq) {
        rq.view("/chat/createRoom");

    }

    public void doCreateRoom(Rq rq) {
        String title = rq.getParam("name", "none");
        String body = rq.getParam("body", "none");

        long id = chatService.write(title,body);
        rq.replace("/usr/chat/room/%d".formatted(id), "%d번 채팅방이 생성 되었습니다.".formatted(id));
    }
}
