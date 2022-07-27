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
        rq.replace("/usr/article/detail/free/%d".formatted(id), "%d번 게시물이 생성 되었습니다.".formatted(id));

    }

    public void showDetail(Rq rq) {
        long id = rq.getLongPathValueByIndex(1, 0);

        if (id == 0) {
            rq.historyBack("번호를 입력해주세요.");
            return;
        }

        ArticleDto articleDto = articleService.findById(id);

        if (articleDto == null) {
            rq.println("해당 글이 존재하지 않습니다.");
            rq.println("<div><a href=\"/usr/article/list/free\">리스트로 이동</a></div>");
            return;
        }

        rq.setAttr("article", articleDto);
        rq.view("detail");
    }

    public void showRemove(Rq rq) {
        long id = rq.getLongPathValueByIndex(1, 0);

        if (id == 0) {
            rq.historyBack("번호를 입력해주세요.");
            return;
        }

        ArticleDto articleDto = articleService.findById(id);

        if (articleDto == null) {
            rq.println("해당 글이 존재하지 않습니다.");
            return;
        }
        articleService.remove(articleDto);
        rq.replace("/usr/article/list/free", "%d번 게시물이 삭제되었습니다.".formatted(id));

    }

    public void showModify(Rq rq) {
        long id = rq.getLongPathValueByIndex(1, 0);

        if (id == 0) {
            rq.historyBack("번호를 입력해주세요.");
            return;
        }

        ArticleDto articleDto = articleService.findById(id);

        if (articleDto == null) {
            rq.historyBack("해당 글이 존재하지 않습니다.");
            return;
        }

        rq.setAttr("article", articleDto);
        rq.view("modify");
    }

    public void doModify(Rq rq) {
        long idx = rq.getLongPathValueByIndex(1, 0);
        String title = rq.getParam("title", "none");
        String body = rq.getParam("body", "none");



        articleService.modify(idx,title,body);
        rq.replace("/usr/article/list/free", "%d번 게시물이 수정되었습니다.".formatted(idx));
    }
}
