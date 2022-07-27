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

    public ArticleDto findById(long id) {
        return articleRepository.findById(id);
    }

    public void remove(ArticleDto articleDto) {
         articleRepository.remove(articleDto);
    }

    public void modify(long idx, String title, String body) {
        articleRepository.modify(idx, title , body);
    }
}
