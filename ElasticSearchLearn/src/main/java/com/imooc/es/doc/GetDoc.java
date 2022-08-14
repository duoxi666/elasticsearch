package com.imooc.es.doc;

import com.imooc.es.utils.ConnectElasticsearch;
import org.elasticsearch.action.get.GetRequest;
import org.elasticsearch.action.get.GetResponse;
import org.elasticsearch.client.RequestOptions;

/**
 * @author: Mock
 * @date: 2022/8/13 16:14
 * @Description: GetDoc
 * @Sign 一入码门深似海 头秃自然千金来
 */
public class GetDoc {

    public static void main(String[] args) {
        ConnectElasticsearch.connect(client -> {
            // 1.创建请求对象
            GetRequest request = new GetRequest().index("user").id("1001");
            // 2.客户端发送请求，获取响应对象
            GetResponse response = client.get(request, RequestOptions.DEFAULT);
            // 3.打印结果信息
            System.out.println("_index:" + response.getIndex());
            System.out.println("_type:" + response.getType());
            System.out.println("_id:" + response.getId());
            System.out.println("source:" + response.getSourceAsString());
        });
    }
}
