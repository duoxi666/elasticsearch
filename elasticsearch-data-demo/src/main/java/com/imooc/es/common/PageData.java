package com.imooc.es.common;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @author: Mock
 * @date: 2022/9/5 19:29
 * @Description:
 * @Sign 一入码门深似海 头秃自然千金来
 */
@Data
@ApiModel(value = "分页数据")
public class PageData<T> implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "总记录数")
    private int total;

    @ApiModelProperty(value = "列表数据")
    private List<T> list;

    /**
     * 分页
     *
     * @param list  列表数据
     * @param total 总记录数
     */
    public PageData(List<T> list, long total) {
        this.list = list;
        this.total = (int) total;
    }
}