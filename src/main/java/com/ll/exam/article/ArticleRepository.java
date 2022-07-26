package com.ll.exam.article;

import com.ll.exam.article.dto.ArticleDto;

import java.util.*;

public class ArticleRepository {
    private List<ArticleDto> datum;
    private long lastId;

    public ArticleRepository(){
        datum = new ArrayList<ArticleDto>();
        lastId = 0;
    }

    public long write(String title, String body) {
        long id = ++lastId;
        ArticleDto a = new ArticleDto(id,title,body);
        datum.add(a);

        return id;
    }
}
