package com.cimc.constant;

/**
 * Excel数据类型
 *
 * @author chenz
 */
public enum ExcelFormat {
    /**
     * 数据类型
     */
    FORMAT_INTEGER("INTEGER"),
    FORMAT_DOUBLE("DOUBLE"),
    FORMAT_PERCENT("PERCENT"),
    FORMAT_DATE("DATE");

    private String value;

    ExcelFormat(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }
}