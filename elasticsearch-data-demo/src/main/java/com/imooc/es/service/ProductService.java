package com.imooc.es.service;


import com.imooc.es.common.BaseService;
import com.imooc.es.entity.ProductEntity;

public interface ProductService extends BaseService<ProductEntity> {

    void save(ProductEntity dto);
}
