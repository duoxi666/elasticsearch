package com.imooc.es.service.impl;

import com.imooc.es.common.BaseServiceImpl;
import com.imooc.es.dao.ProductDao;
import com.imooc.es.entity.ProductEntity;
import com.imooc.es.index.Product;
import com.imooc.es.service.ProductService;
import com.imooc.es.utils.ConvertUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.elasticsearch.core.ElasticsearchOperations;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
* @author: Mock
* @date: 2022/9/5 19:57
* @Description:
* @Sign 一入码门深似海 头秃自然千金来
*/
@Service
public class ProductServiceImpl extends BaseServiceImpl<ProductDao, ProductEntity> implements ProductService {

    @Autowired
    private ElasticsearchOperations elasticsearchOperations;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void save(ProductEntity dto) {
        baseDao.insert(dto);
        Product product = ConvertUtils.sourceToTarget(dto, Product.class);
        elasticsearchOperations.save(product);
    }
}
