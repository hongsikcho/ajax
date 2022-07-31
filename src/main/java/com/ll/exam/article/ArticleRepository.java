package com.ll.exam.article;

import com.ll.exam.article.dto.ArticleDto;

import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class ArticleRepository {
    private static List<ArticleDto> datum;
    private static long lastId;

    static {
        datum = new ArrayList<ArticleDto>();
        makeTestData();
    }

    public static void makeTestData() {
        IntStream.rangeClosed(1, 10).forEach(id -> {
            String title = "제목%d".formatted(id);
            String body = "내용%d".formatted(id);
            write(title, body);
        });
    }

    public static long write(String title, String body) {
        long id = ++lastId;
        ArticleDto a = new ArticleDto(id,title,body);
        datum.add(a);
        return id;
    }

    public long writeId() {
        return lastId;
    }

    public static List<ArticleDto> findAll() {
        return datum;
    }

    public static ArticleDto findById(long id) {
        for(ArticleDto a : datum){
            if(a.getId() == id){
                return a;
            }
        }
        return null;
    }

    public void remove(ArticleDto articleDto) {
        datum.remove(articleDto);
    }

    public void modify(long idx, String title, String body) {
        for(ArticleDto a : datum){
            if(a.getId() == idx){
                a.setTitle(title);
                a.setBody(body);
                return;
            }
        }
    }

    public List<ArticleDto> findAllIdGreaterThan(long fromId) {
        return datum
                .stream()
                .filter(articleDto -> articleDto.getId() >= fromId)
                .collect(Collectors.toList());
    }
}
