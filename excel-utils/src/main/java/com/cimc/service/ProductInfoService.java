package com.cimc.service;

import com.cimc.entity.ProductInfo;

import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * @author chenz
 * @create 2019-09-29 13:54
 */
public interface ProductInfoService {

    List<ProductInfo> getProductList(Map<String, Object> map);

    void export(HttpServletResponse response, String fileName);

}
