package com.imooc.es.blog.service;

import org.elasticsearch.rest.RestStatus;

import java.io.IOException;
import java.util.List;

public interface EsCurdService {

    /**
     * 功能描述: 创建索引
     *
     * @param indexName 索引名称
     * @return:void
     * @since: v1.0
     * @Author:wangcanfeng
     * @Date: 2019/10/31-16:51
     */
    String createIndex(String indexName) throws IOException;

    /**
     * 功能描述: 删除索引
     *
     * @param indexName 索引名称
     * @return:void
     * @since: v1.0
     * @Author:wangcanfeng
     * @Date: 2019/10/31-16:51
     */
    void deleteIndex(String indexName) throws IOException;

    /**
     * 功能描述: 查询索引
     *
     * @param indexName 索引名称
     * @return:void
     * @since: v1.0
     * @Author:wangcanfeng
     * @Date: 2019/10/31-16:51
     */
    boolean existIndex(String indexName) throws IOException;

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
    RestStatus insert(String indexName, String docType, Object object) throws IOException;

    /**
     * 功能描述: 根据索引名称和类型去查询匹配的信息
     *
     * @param indexName 索引名称
     * @param docType   数据对象类型，可以把它设置成对象类的类名
     * @return:java.util.List<java.lang.String>
     * @since: v1.0
     * @Author:wangcanfeng
     * @Date: 2019/10/31-21:20
     */
    List<String> search(String indexName, String docType) throws IOException;

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
    RestStatus update(String indexName, String docType, String id, Object object) throws IOException;

    /**
     * 功能描述: 根据id删除数据
     *
     * @param id _id编号
     * @return:org.elasticsearch.rest.RestStatus
     * @since: v1.0
     * @Author:wangcanfeng
     * @Date: 2019/10/31-21:39
     */
    RestStatus delete(String id) throws IOException;
}
