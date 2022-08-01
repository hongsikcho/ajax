package com.ll.exam.chat;

import java.io.CharArrayReader;

public class ChatService {
    ChatRoomRepository chatRoomRepository;

    ChatService(){
        chatRoomRepository = new ChatRoomRepository();
    }


    public long write(String title, String body) {
        return chatRoomRepository.create(title,body);
    }
}
