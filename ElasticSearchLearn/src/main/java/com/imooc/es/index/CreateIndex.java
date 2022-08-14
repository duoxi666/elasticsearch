package com.imooc.es.index;

import org.apache.http.HttpHost;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.client.indices.CreateIndexRequest;
import org.elasticsearch.client.indices.CreateIndexResponse;

import java.io.IOException;

/**
 * @author: Mock
 * @date: 2022/8/13 15:34
 * @Description: es创建索引操作
 * @Sign 一入码门深似海 头秃自然千金来
 */
public class CreateIndex {

    public static void main(String[] args) throws IOException {
        //创建客户端
        RestHighLevelClient client = new RestHighLevelClient(
                RestClient.builder(new HttpHost("192.168.0.14", 9200, "http")));

        //创建索引
        CreateIndexRequest request = new CreateIndexRequest("user");
        //发送请求 获取响应
        CreateIndexResponse response = client.indices().create(request, RequestOptions.DEFAULT);
        boolean acknowledged = response.isAcknowledged();
        //响应状态
        System.out.println("操作状态= "+acknowledged);

        //关闭链接
        client.close();
    }
}
