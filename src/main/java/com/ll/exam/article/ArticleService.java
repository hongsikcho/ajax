package com.ll.exam.article;

import com.ll.exam.article.dto.ArticleDto;

import java.util.List;

public class ArticleService {
    private ArticleRepository articleRepository;

    public ArticleService(){
        articleRepository = new ArticleRepository();
    }

    public long write(String title, String body) {
        return articleRepository.write(title,body);
    }

    public long writeId() {
        return articleRepository.writeId();
    }

    public List<ArticleDto> findAll() {
        return articleRepository.findAll();
    }
}