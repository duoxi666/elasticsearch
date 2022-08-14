package com.imooc.es.doc;

import com.imooc.es.utils.ConnectElasticsearch;
import org.elasticsearch.action.bulk.BulkRequest;
import org.elasticsearch.action.bulk.BulkResponse;
import org.elasticsearch.action.delete.DeleteRequest;
import org.elasticsearch.client.RequestOptions;

/**
 * @author: Mock
 * @date: 2022/8/13 18:43
 * @Description: 批量删除
 * @Sign 一入码门深似海 头秃自然千金来
 */
public class BatchDelDoc {
    public static void main(String[] args) {
        ConnectElasticsearch.connect(client -> {
            // 创建批量删除请求对象
            BulkRequest request = new BulkRequest();
            request.add(new DeleteRequest().index("user").id("1001"));
            request.add(new DeleteRequest().index("user").id("1002"));
            request.add(new DeleteRequest().index("user").id("1003"));
            // 客户端发送请求，获取响应对象
            BulkResponse responses = client.bulk(request, RequestOptions.DEFAULT);
            // 打印结果信息
            System.out.println("took:" + responses.getTook());
            System.out.println("items:" + responses.getItems());
        });
    }
}
