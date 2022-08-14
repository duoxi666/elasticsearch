package com.imooc.es.blog.controller;

import com.imooc.es.blog.entity.mysql.MysqlBlog;
import com.imooc.es.blog.repository.MysqlBlogRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

/**
 * @author: Mock
 * @date: 2022/8/13 22:30
 * @Description: index
 * @Sign 一入码门深似海 头秃自然千金来
 */
@Controller
@Slf4j
public class IndexController {
    @Autowired
    MysqlBlogRepository mysqlBlogRepository;

    @GetMapping("/")
    public String index() {
        List<MysqlBlog> all = mysqlBlogRepository.findAll();
        log.info("【查询所有的博客数据】all={}", all.size());
        return "index.html";

    }
}
