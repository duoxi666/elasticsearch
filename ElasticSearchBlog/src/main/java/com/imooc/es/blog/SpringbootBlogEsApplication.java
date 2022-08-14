package com.imooc.es.blog;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author: Mock
 * @date: 2022/8/13 22:11
 * @Description: 启动类
 * @Sign 一入码门深似海 头秃自然千金来
 */
@SpringBootApplication
@Slf4j
public class SpringbootBlogEsApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringbootBlogEsApplication.class, args);
        log.info("项目启动成功，访问地址：http://localhost:8081/");
    }
}
