package com.imooc.lagou.es.controller;

import com.imooc.lagou.es.service.PositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * @author: Mock
 * @date: 2022/8/15 14:21
 * @Description: PositionController
 * @Sign 一入码门深似海 头秃自然千金来
 */
@Controller
public class PositionController {
    @Autowired
    private PositionService service;

    // 测试页面
    @GetMapping({"/", "/index"})
    public String indexPage() {
        return "index";
    }

    @GetMapping("/search/{keyword}/{pageNo}/{pageSize}")
    @ResponseBody
    public List<Map<String, Object>> searchPosition(@PathVariable("keyword") String keyword, @PathVariable("pageNo") int pageNo,
                                                    @PathVariable("pageSize") int pageSize) throws IOException {
        List<Map<String, Object>> list = service.searchPos(keyword, pageNo, pageSize);
        return list;
    }

    @RequestMapping("/importAll")
    @ResponseBody
    public String importAll() {
        try {
            service.importAll();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "success";
    }
}