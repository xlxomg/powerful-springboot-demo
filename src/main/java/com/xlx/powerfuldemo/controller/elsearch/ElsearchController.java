package com.xlx.powerfuldemo.controller.elsearch;

import com.xlx.powerfuldemo.component.elsearch.Article;
import com.xlx.powerfuldemo.component.elsearch.ArticleRepository;
import org.elasticsearch.index.query.QueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnBean;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("elsearch")
@ConditionalOnProperty("spring.data.elasticsearch.cluster-name")
public class ElsearchController {

    @Autowired
    private ArticleRepository articleRepository;

    @GetMapping("/save")
    public Object save(long id, String title) {

        Article article = new Article();
        article.setId(id);
        article.setPv(123);
        article.setContent("Springboot整合Elasticsearch");
        article.setTitle(title);
        article.setSummary("搜索框架整合");

        articleRepository.save(article);

        return "save";
    }

    @GetMapping("/search")
    public Object search(String title) {
        QueryBuilder queryBuilder = QueryBuilders.matchQuery("title", title);
        Iterable<Article> list = articleRepository.search(queryBuilder);
        return list;
    }

}