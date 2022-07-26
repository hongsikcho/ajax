package com.ll.exam.article;

import com.ll.exam.Rq;

import com.ll.exam.article.dto.ArticleDto;

import java.util.ArrayList;
import java.util.List;

public class ArticleController {
    private ArticleService articleService;

    public ArticleController() {
        articleService = new ArticleService();
    }

    public void showList(Rq rq) {
        List<ArticleDto> articleDtos = new ArrayList<>();

        articleDtos = articleService.findAll();
        rq.setAttr("articles", articleDtos);
        rq.view("list");
    }

    public void showWrite(Rq rq) {
        rq.view("write");
    }

    public void doWrite(Rq rq) {

        String title = rq.getParam("title", "none");
        String body = rq.getParam("body", "none");

        long id = articleService.write(title,body);
        rq.appendBody("%d 번 게시물이 등록되었습니다.".formatted(id));

    }

    public void showDetail(Rq rq) {
        long id = 1;
        ArticleDto articleDto = articleService.findById(id);

        rq.setAttr("articleDto",articleDto);
        rq.view("detail");
    }
}
