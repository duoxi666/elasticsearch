package com.imooc.es.doc;

import com.imooc.es.utils.ConnectElasticsearch;
import org.elasticsearch.action.delete.DeleteRequest;
import org.elasticsearch.action.delete.DeleteResponse;
import org.elasticsearch.client.RequestOptions;

/**
 * @author: Mock
 * @date: 2022/8/13 18:42
 * @Description: 删除文档
 * @Sign 一入码门深似海 头秃自然千金来
 */
public class DeleteDoc {
    public static void main(String[] args) {
        ConnectElasticsearch.connect(client -> {
            // 1.创建请求对象
            DeleteRequest request = new DeleteRequest().index("user").id("1001");
            // 2.客户端发送请求，获取响应对象
            DeleteResponse response = client.delete(request, RequestOptions.DEFAULT);
            // 3.打印信息
            System.out.println(response.toString());
        });
    }
}
