package com.fastshop.net.service;

import java.util.List;

import com.fastshop.net.entity.Category;
import com.fastshop.net.entity.CategoryDetail;

public interface CategoryDetailService {
    void save(CategoryDetail categoryDetail);
    List<String> getPropertyByCategory(Category category);
    List<CategoryDetail> findByCategory(Category category);
    CategoryDetail findById(String id);
}
