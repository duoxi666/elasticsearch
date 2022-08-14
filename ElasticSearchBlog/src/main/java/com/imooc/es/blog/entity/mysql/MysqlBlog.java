package com.imooc.es.blog.entity.mysql;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * @author: Mock
 * @date: 2022/8/13 22:14
 * @Description: 实体
 * @Sign 一入码门深似海 头秃自然千金来
 */
@Data
@Table(name = "t_blog")
@Entity
public class MysqlBlog {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String title;
    private String author;
    @Column(columnDefinition = "mediumtext")
    private String content;
    private Date createTime;
    private Date updateTime;
}
