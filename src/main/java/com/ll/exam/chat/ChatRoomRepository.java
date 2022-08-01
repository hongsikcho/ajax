package com.ll.exam.chat;

import com.ll.exam.chatRoom.dto.chatRoomDto;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;

public class ChatRoomRepository {
    static List<chatRoomDto> datum;
    static long lastId;

    static{
        datum = new ArrayList<>();
        lastId = 0;

        makeTestData();
    }

    private static void makeTestData() {
        IntStream.rangeClosed(1,10).forEach(id ->{
            String title = "제목%d".formatted(id);
            String body = "채팅방%d".formatted(id);
            create(title,body);
        });
    }

    public static long create(String title, String body) {
        long id = ++lastId;
        chatRoomDto newChatRoom = new chatRoomDto(id,title,body);
        datum.add(newChatRoom);

        return 0;
    }

    public List<chatRoomDto> findAll() {
        return datum;
    }
}
