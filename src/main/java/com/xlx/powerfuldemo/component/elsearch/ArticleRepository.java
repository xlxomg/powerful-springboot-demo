package com.xlx.powerfuldemo.component.elsearch;


import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Component;

@Component
@ConditionalOnProperty("spring.data.elasticsearch.cluster-name")
public interface ArticleRepository extends ElasticsearchRepository<Article, Long> {
}