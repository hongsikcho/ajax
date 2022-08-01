package com.ll.exam.chat;

import com.ll.exam.chatRoom.dto.chatRoomDto;

import java.io.CharArrayReader;
import java.util.List;

public class ChatService {
    ChatRoomRepository chatRoomRepository;

    ChatService(){
        chatRoomRepository = new ChatRoomRepository();
    }


    public long write(String title, String body) {
        return chatRoomRepository.create(title,body);
    }

    public List<chatRoomDto> findAll() {
        return chatRoomRepository.findAll();
    }
}
