package com.cimc;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author chenz
 * @create 2019-09-29 10:50
 */
@SpringBootApplication
@MapperScan("com.cimc.mapper")
public class ExcelUtilApplication {
    public static void main(String[] args) {
        SpringApplication.run(ExcelUtilApplication.class, args);
    }
}
