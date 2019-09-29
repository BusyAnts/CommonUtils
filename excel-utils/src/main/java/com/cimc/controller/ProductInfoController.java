package com.cimc.controller;

import com.cimc.service.ProductInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.util.Random;

/**
 * @author chenz
 * @create 2019-09-29 14:16
 */
@RestController
@RequestMapping("/excelUtils")
public class ProductInfoController {
    @Autowired
    private ProductInfoService productInfoService;

    @GetMapping("/export")
    public void export(HttpServletResponse response) {
        this.productInfoService.export(response, "商品信息" + new Random().nextInt(1000));
    }


}
