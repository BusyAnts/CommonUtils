package com.cimc.entity;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @author chenz
 * @create 2019-09-29 11:39
 */
@Data
@Accessors(chain = true)
public class ProductInfo {

    private Long id;
    private String productName;
    private Long categoryId;
    private String categoryName;
    private Long branchId;
    private String branchName;
    private Long shopId;
    private String shopName;
    private Double price;
    private Integer stock;
    private Integer salesNum;
    private String createTime;
    private String updateTime;
    private Byte isDel;

}
