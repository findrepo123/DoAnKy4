package com.fastshop.net.dto;

import com.fastshop.net.entity.Product;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartItem {
    int id;
    Product product;
    int quantity;
}
