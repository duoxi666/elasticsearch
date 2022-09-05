package com.imooc.es.dao;

import com.imooc.es.common.BaseDao;
import com.imooc.es.entity.ProductEntity;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductDao extends BaseDao<ProductEntity> {
}
