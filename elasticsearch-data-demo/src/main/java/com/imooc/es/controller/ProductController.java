package com.imooc.es.controller;

import com.imooc.es.entity.ProductEntity;
import com.imooc.es.index.Product;
import com.imooc.es.service.ProductService;
import com.imooc.es.utils.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: Mock
 * @date: 2022/9/5 19:07
 * @Description:
 * @Sign 一入码门深似海 头秃自然千金来
 */
@RestController
@RequestMapping("api/product")
@Api("产品管理")
public class ProductController {

    @Autowired
    private ProductService productService;


    @PostMapping
    @ApiOperation("保存")
    public Result save(@RequestBody ProductEntity dto){


        productService.save(dto);

        return new Result();
    }
}
