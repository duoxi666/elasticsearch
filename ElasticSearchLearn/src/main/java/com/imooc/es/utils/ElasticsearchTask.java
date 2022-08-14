package com.imooc.es.utils;

import org.elasticsearch.client.RestHighLevelClient;

@FunctionalInterface
public interface ElasticsearchTask {
    void doSomething(RestHighLevelClient client) throws Exception;
}