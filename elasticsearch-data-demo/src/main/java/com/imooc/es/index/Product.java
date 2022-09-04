package com.imooc.es.index;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

import java.util.Date;

/**
 * @author: Mock
 * @date: 2022/8/31 22:21
 * @Description:
 * @Sign 一入码门深似海 头秃自然千金来
 */
@Data
@Document(indexName = "products", createIndex = true)
public class Product {
    @Id
    private Long id;

    @Field(type = FieldType.Keyword)
    private String title;

    @Field(type = FieldType.Text, analyzer = "ik_max_word")
    private String description;

    @Field(type = FieldType.Date)
    private Date createDate;

    @Field(type = FieldType.Float)
    private Double price;
}
