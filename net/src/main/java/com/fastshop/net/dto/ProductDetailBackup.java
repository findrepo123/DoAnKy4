package com.fastshop.net.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDetailBackup {
    Long id;
    String categoryDetailId;
    String property;
    String info;
    Integer productId;
}
