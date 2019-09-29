package com.cimc.mapper;

import com.cimc.entity.ProductInfo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * @author chenz
 * @create 2019-09-29 13:48
 */
@Mapper
public interface ProductInfoMapper {

    List<ProductInfo> getProductList(Map<String, Object> map);

}
