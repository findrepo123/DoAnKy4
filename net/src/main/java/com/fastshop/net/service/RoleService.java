package com.fastshop.net.service;

import java.util.List;

import com.fastshop.net.entity.Role;

public interface RoleService {
    List<Role> findAll();
    Role findById(String id);
}
