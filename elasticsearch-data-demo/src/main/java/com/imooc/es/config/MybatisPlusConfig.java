package com.imooc.es.config;

import com.baomidou.mybatisplus.extension.plugins.inner.PaginationInnerInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;

/**
 * @author: Mock
 * @date: 2022/9/5 19:17
 * @Description:
 * @Sign 一入码门深似海 头秃自然千金来
 */
@Configuration
public class MybatisPlusConfig {


    /**
     * 配置分页
     */
    @Bean
    @Order(0)
    public PaginationInnerInterceptor paginationInterceptor() {
        return new PaginationInnerInterceptor();
    }

}