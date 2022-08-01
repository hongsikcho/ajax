package com.ll.exam.chatRoom.dto;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class chatRoomDto {
    private long id;
    private String title;
    private String body;
}
