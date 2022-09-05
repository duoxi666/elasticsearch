package com.imooc.es.common;

import java.util.List;
import java.util.Map;

public interface CrudService<T, D> extends BaseService<T> {

    /**
     * 获取分页数据
     * @param params
     * @return
     */
    PageData<D> page(Map<String, Object> params);

    /**
     * 条件查询
     * @param params
     * @return
     */
    List<D> list(Map<String, Object> params);

    /**
     * 单个查询
     * @param id
     * @return
     */
    D get(Long id);

    /**
     * 新增
     * @param dto
     */
    void save(D dto);

    /**
     * 更新
     * @param dto
     */
    void update(D dto);

    /**
     * 删除
     * @param ids
     */
    void delete(Long[] ids);

}
