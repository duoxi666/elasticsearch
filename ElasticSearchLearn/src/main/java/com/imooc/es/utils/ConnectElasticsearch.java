package com.imooc.es.utils;

import org.apache.http.HttpHost;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;

/**
 * @author: Mock
 * @date: 2022/8/13 15:15
 * @Description: 连接es工具类
 * @Sign 一入码门深似海 头秃自然千金来
 */
public class ConnectElasticsearch {
    public static void connect(ElasticsearchTask task) {
        // 创建客户端对象，并自动关闭连接
        try (RestHighLevelClient client = new RestHighLevelClient(
                RestClient.builder(new HttpHost("192.168.0.14", 9200, "http")))) {
            task.doSomething(client);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
