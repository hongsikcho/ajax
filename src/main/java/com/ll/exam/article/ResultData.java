package com.ll.exam.article;

import com.ll.exam.article.dto.ArticleDto;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;
@Data
@AllArgsConstructor
public class ResultData<T> {
    private String resultCode;
    private final String msg;
    T data;

}
