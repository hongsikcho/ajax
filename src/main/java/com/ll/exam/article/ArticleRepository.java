package com.ll.exam.article;

import com.ll.exam.article.dto.ArticleDto;

import java.util.*;

public class ArticleRepository {
    private static List<ArticleDto> datum;
    private static long lastId;

    static {
        datum = new ArrayList<ArticleDto>();
        lastId = 0;
    }

    public long write(String title, String body) {
        long id = ++lastId;
        ArticleDto a = new ArticleDto(id,title,body);
        datum.add(a);
        return id;
    }

    public long writeId() {
        return lastId;
    }

    public List<ArticleDto> findAll() {
        return datum;
    }

    public ArticleDto findById(long id) {
        for(ArticleDto a : datum){
            if(a.getId() == id){
                return a;
            }
        }
        return null;
    }
}
