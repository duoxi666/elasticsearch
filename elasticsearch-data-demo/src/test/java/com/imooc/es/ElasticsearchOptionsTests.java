package com.imooc.es;

import cn.hutool.core.util.IdUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.imooc.es.index.Product;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.elasticsearch.core.ElasticsearchOperations;
import org.springframework.data.elasticsearch.core.SearchHit;
import org.springframework.data.elasticsearch.core.SearchHits;
import org.springframework.data.elasticsearch.core.query.Query;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;

/**
 * @author: Mock
 * @date: 2022/8/31 22:27
 * @Description:
 * @Sign 一入码门深似海 头秃自然千金来
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class ElasticsearchOptionsTests {

    @Autowired
    private ElasticsearchOperations elasticsearchOperations;


    /**
     * 创建索引
     */
    public void testIndex(){
        Product product = new Product();
        product.setId(IdUtil.getSnowflakeNextId());
        product.setTitle("小熊饼干");
        product.setDescription("小熊饼干真好吃");
        product.setPrice(2.0);
        product.setCreateDate(new Date());
        elasticsearchOperations.save(product);
    }

    /**
     * 修改索引 id
     */
    public void testUpdateIndex(){
        Product product = new Product();
        product.setId(IdUtil.getSnowflakeNextId());
        product.setTitle("小熊饼干");
        product.setDescription("小熊饼干真好吃");
        product.setPrice(1.0);
        product.setCreateDate(new Date());
        elasticsearchOperations.save( product);
    }
    /**
     * 查看索引
     */
    public void testOne(){
        Product product = elasticsearchOperations.get("", Product.class);
        System.out.println("product = " + product);
    }
    /**
     * 删除索引
     */
    public void testDelete() {
        elasticsearchOperations.delete("",Product.class);
    }

    /**
     * 删除所有索引
     */
    public void testDeleteAll() {
        elasticsearchOperations.delete(Query.findAll(),Product.class);
    }

    /**
     * 查询所有
     */
    public void testFindAl() throws JsonProcessingException {
        SearchHits<Product> productSearchHits = elasticsearchOperations.search(Query.findAll(), Product.class);
        System.out.println("productSearchHits.getMaxScore() = " + productSearchHits.getMaxScore());
        System.out.println("productSearchHits.getTotalHits() = " + productSearchHits.getTotalHits());
        for (SearchHit<Product> productSearchHit : productSearchHits) {
            System.out.println("productSearchHit = " + new ObjectMapper().writeValueAsString(productSearchHit));
        }
    }

}
