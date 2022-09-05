package com.imooc.es.blog.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.imooc.es.blog.service.EsCurdService;
import org.elasticsearch.action.admin.indices.delete.DeleteIndexRequest;
import org.elasticsearch.action.delete.DeleteRequest;
import org.elasticsearch.action.delete.DeleteResponse;
import org.elasticsearch.action.index.IndexRequest;
import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.action.search.SearchRequest;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.update.UpdateRequest;
import org.elasticsearch.action.update.UpdateResponse;
import org.elasticsearch.client.RequestOptions;

import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.client.indices.CreateIndexRequest;
import org.elasticsearch.client.indices.CreateIndexResponse;
import org.elasticsearch.client.indices.GetIndexRequest;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.xcontent.XContentType;
import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.index.query.MatchQueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.rest.RestStatus;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

/**
 * @author: Mock
 * @date: 2022/8/13 23:09
 * @Description: ES实现类
 * @Sign 一入码门深似海 头秃自然千金来
 */
@Service
public class EsCurdServiceImpl implements EsCurdService {

    @Autowired
    private RestHighLevelClient rhlClient;

    /**
     * 功能描述: 创建索引
     *
     * @param indexName 索引名称
     * @return:void
     * @since: v1.0
     * @Author:wangcanfeng
     * @Date: 2019/10/31-16:51
     */
    @Override
    public String createIndex(String indexName) throws IOException {
        // 创建索引
        CreateIndexRequest createIndexRequest = new CreateIndexRequest(indexName);
        createIndexRequest.settings(Settings.builder()
                // 分片数
                .put("index.number_of_shards", 3)
                // 备份数
                .put("index.number_of_replicas", 2));
        CreateIndexResponse response = rhlClient.indices().create(createIndexRequest, RequestOptions.DEFAULT);
        return response.index();
    }

    /**
     * 功能描述: 删除索引
     *
     * @param indexName 索引名称
     * @return:void
     * @since: v1.0
     * @Author:wangcanfeng
     * @Date: 2019/10/31-16:51
     */
    @Override
    public void deleteIndex(String indexName) throws IOException {
        DeleteIndexRequest deleteIndexRequest = new DeleteIndexRequest(indexName);
        rhlClient.indices().delete(deleteIndexRequest, RequestOptions.DEFAULT);
    }

    /**
     * 功能描述: 查询索引
     *
     * @param indexName 索引名称
     * @return:void
     * @since: v1.0
     * @Author:wangcanfeng
     * @Date: 2019/10/31-16:51
     */
    @Override
    public boolean existIndex(String indexName) throws IOException {
        // 判断索引是否存在
        GetIndexRequest getIndexRequest = new GetIndexRequest(indexName);
        return rhlClient.indices().exists(getIndexRequest, RequestOptions.DEFAULT);
    }

    /**
     * 功能描述: 往索引里插入数据
     *
     * @param indexName 索引名称
     * @param docType   数据对象类型，可以把它设置成对象类的类名
     * @param object    数据对象
     * @return:void
     * @since: v1.0
     * @Author:wangcanfeng
     * @Date: 2019/10/31-17:26
     */
    @Override
    public RestStatus insert(String indexName, String docType, Object object) throws IOException {
        IndexRequest request = new IndexRequest(indexName);

        // Model -> JSON
        ObjectMapper objectMapper = new ObjectMapper();
        String indexJson = objectMapper.writeValueAsString(object);

        // 添加文档数据，数据格式为 JSON 格式
        request.source(indexJson, XContentType.JSON);

        IndexResponse response = rhlClient.index(request, RequestOptions.DEFAULT);
        return response.status();
    }

    @Override
    public List<String> search(String indexName, String docType) throws IOException {
        SearchRequest searchRequest = new SearchRequest();
        SearchSourceBuilder sourceBuilder = new SearchSourceBuilder();
        // 分页参数
        sourceBuilder.from(0);
        sourceBuilder.size(10);
        BoolQueryBuilder boolBuilder = QueryBuilders.boolQuery();
        // 关键词查找匹配，这个不是精确查找，他会对字段中的内容进行切词匹配
        MatchQueryBuilder matchQueryBuilder = QueryBuilders.matchQuery("name", "wo");
        // 模糊查找
//        FuzzyQueryBuilder fuzzyQueryBuilder = QueryBuilders.fuzzyQuery("name", "wangcagceng").fuzziness(Fuzziness.TWO);
        // 前缀查找
//        PrefixQueryBuilder prefixQueryBuilder = QueryBuilders.prefixQuery("name", "wang");
        boolBuilder.must(matchQueryBuilder);
        // 设置需要返回的字段
//        sourceBuilder.fetchSource(new String[]{"name", "age"}, new String[]{}).query(boolBuilder);
        // 设置索引和类型
        searchRequest.indices("test").types("person").source(sourceBuilder);
        SearchResponse response = rhlClient.search(searchRequest, RequestOptions.DEFAULT);
        List<String> res = new LinkedList<>();
        response.getHits().iterator().forEachRemaining(hit -> {
            res.add(hit.getSourceAsString());
        });
        return res;
    }

    /**
     * 功能描述: 更新数据
     *
     * @param indexName 索引名称
     * @param docType   数据对象类型，可以把它设置成对象类的类名
     * @param object    数据对象
     * @return:void
     * @since: v1.0
     * @Author:wangcanfeng
     * @Date: 2019/10/31-17:26
     */
    @Override
    public RestStatus update(String indexName, String docType, String id, Object object) throws IOException {
        UpdateRequest request = new UpdateRequest();
        request.index(indexName).id(id);

        // Model -> JSON
        ObjectMapper objectMapper = new ObjectMapper();
        String indexJson = objectMapper.writeValueAsString(object);

        request.doc(indexJson, XContentType.JSON);
        UpdateResponse response = rhlClient.update(request, RequestOptions.DEFAULT);
        return response.status();
    }

    /**
     * 功能描述: 根据id删除数据
     *
     * @param id _id编号
     * @return:org.elasticsearch.rest.RestStatus
     * @since: v1.0
     * @Author:wangcanfeng
     * @Date: 2019/10/31-21:39
     */
    @Override
    public RestStatus delete(String id) throws IOException {
        DeleteRequest request = new DeleteRequest();
        request.index("test").type("person").id(id);
        DeleteResponse response = rhlClient.delete(request, RequestOptions.DEFAULT);
        return response.status();
    }

}
