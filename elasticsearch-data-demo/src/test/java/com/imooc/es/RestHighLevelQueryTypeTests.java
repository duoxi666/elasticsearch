package com.imooc.es;

import org.elasticsearch.action.search.SearchRequest;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @author: Mock
 * @date: 2022/9/5 18:27
 * @Description:
 * @Sign 一入码门深似海 头秃自然千金来
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class RestHighLevelQueryTypeTests {

    @Autowired
    private RestHighLevelClient restHighLevelClient;

    @Test
    public void testQuery(){
        //搜索请求对象
        SearchRequest searchRequest = new SearchRequest("elasticsearch_test");
        //搜索源构建对象
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        //搜索方式
        //matchAllQuery搜索全部
        //searchSourceBuilder.query(QueryBuilders.matchAllQuery());

        //关键词搜索
        //searchSourceBuilder.query(QueryBuilders.termQuery("description","浣熊"));

        //range 范围 大于0 小于2
        searchSourceBuilder.query(QueryBuilders.rangeQuery("price").gt(0).lte(2));

        //prefix 前缀
        searchSourceBuilder.query(QueryBuilders.prefixQuery("title","小熊"));

        //通配符 ?一个字符 *多个字符
        searchSourceBuilder.query(QueryBuilders.wildcardQuery("title","小浣熊*"));

        //多个id查询
        searchSourceBuilder.query(QueryBuilders.idsQuery().addIds("1").addIds("2"));

        //多字段检索
        searchSourceBuilder.query(QueryBuilders.multiMatchQuery("非常不错").field("title").field("description"));
        searchSourceBuilder.query(QueryBuilders.multiMatchQuery("非常不错","name","description"));

        //模糊查询
        searchSourceBuilder.query(QueryBuilders.fuzzyQuery("title","模糊"));
    }


}
