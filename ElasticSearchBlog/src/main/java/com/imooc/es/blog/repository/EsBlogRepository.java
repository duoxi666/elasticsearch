package com.imooc.es.blog.repository;

import com.imooc.es.blog.entity.es.EsBlog;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;


public interface EsBlogRepository extends ElasticsearchRepository<EsBlog, Integer> {
}
