package com.cimc.service.test;

import com.cimc.entity.ProductInfo;
import com.cimc.service.ProductInfoService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author chenz
 * @create 2019-09-29 14:22
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class ProductInfoServiceTest {

    @Autowired
    private ProductInfoService productInfoService;

    @Test
    public void getProductServiceTest() {
        Map<String, Object> map = new HashMap<>();
        map.put("offset", 0);
        map.put("limit", 10000);
        List<ProductInfo> productInfos = productInfoService.getProductList(map);
        System.out.println(productInfos);
    }
}
