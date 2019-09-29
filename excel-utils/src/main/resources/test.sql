CREATE TABLE `product_info`
(
    `id`            int(11)             NOT NULL AUTO_INCREMENT COMMENT '记录唯一标识',
    `product_name`  varchar(50)         NOT NULL COMMENT '商品名称',
    `category_id`   bigint(20)          NOT NULL DEFAULT '0' COMMENT '类型ID',
    `category_name` varchar(50)         NOT NULL COMMENT '冗余分类名称-避免跨表join',
    `branch_id`     bigint(20)          NOT NULL COMMENT '品牌ID',
    `branch_name`   varchar(50)         NOT NULL COMMENT '冗余品牌名称-避免跨表join',
    `shop_id`       bigint(20)          NOT NULL COMMENT '商品ID',
    `shop_name`     varchar(50)         NOT NULL COMMENT '冗余商店名称-避免跨表join',
    `price`         decimal(10, 2)      NOT NULL COMMENT '商品当前价格-属于热点数据，而且价格变化需要记录，需要价格详情表',
    `stock`         int(11)             NOT NULL COMMENT '库存-热点数据',
    `sales_num`     int(11)             NOT NULL COMMENT '销量',
    `create_time`   timestamp           NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
    `update_time`   timestamp           NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `is_del`        tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '记录是否已经删除',
    PRIMARY KEY (`id`),
    KEY `idx_shop_category_salesnum` (`shop_id`, `category_id`, `sales_num`),
    KEY `idx_category_branch_price` (`category_id`, `branch_id`, `price`),
    KEY `idx_product_name` (`product_name`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='商品信息表';


insert into product_info(product_name,category_id,category_name,branch_id,branch_name,shop_id,shop_name,price,stock,sales_num)
values
('大米',1,'生活',1,'金龙鱼',1,'1号店',11.11,1,1);
insert into product_info(product_name,category_id,category_name,branch_id,branch_name,shop_id,shop_name,price,stock,sales_num)
values
('大米2',2,'生活2',2,'金龙鱼2',2,'2号店',22.22,2,2);

insert into product_info(product_name,category_id,category_name,branch_id,branch_name,shop_id,shop_name,price,stock,sales_num)
values
('大米3',3,'生活3',3,'金龙鱼3',3,'3号店',33.33,3,3);

insert into product_info(product_name,category_id,category_name,branch_id,branch_name,shop_id,shop_name,price,stock,sales_num)
values
('大米4',4,'生活4',4,'金龙鱼4',4,'4号店',44.44,4,4);

insert into product_info(product_name,category_id,category_name,branch_id,branch_name,shop_id,shop_name,price,stock,sales_num)
values
('大米5',5,'生活5',5,'金龙鱼5',5,'5号店',55.55,5,5);

insert into product_info(product_name,category_id,category_name,branch_id,branch_name,shop_id,shop_name,price,stock,sales_num)
values
('大米6',6,'生活6',6,'金龙鱼6',6,'6号店',66.66,6,6);

insert into product_info(product_name,category_id,category_name,branch_id,branch_name,shop_id,shop_name,price,stock,sales_num)
values
('大米7',7,'生活7',7,'金龙鱼7',7,'7号店',77.77,7,7);

insert into product_info(product_name,category_id,category_name,branch_id,branch_name,shop_id,shop_name,price,stock,sales_num)
values
('大米8',8,'生活8',8,'金龙鱼8',8,'8号店',88.88,8,8);

insert into product_info(product_name,category_id,category_name,branch_id,branch_name,shop_id,shop_name,price,stock,sales_num)
values
('大米9',9,'生活9',9,'金龙鱼9',9,'9号店',99.99,9,9);

insert into product_info(product_name,category_id,category_name,branch_id,branch_name,shop_id,shop_name,price,stock,sales_num)
values
('大米10',10,'生活10',10,'金龙鱼10',10,'10号店',100.00,10,10);

insert into product_info(product_name,category_id,category_name,branch_id,branch_name,shop_id,shop_name,price,stock,sales_num)
select product_name,category_id,category_name,branch_id,branch_name,shop_id,shop_name,price,stock,sales_num from product_info;

select count(id) from product_info;