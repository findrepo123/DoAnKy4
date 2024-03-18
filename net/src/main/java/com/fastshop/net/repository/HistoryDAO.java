package com.fastshop.net.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fastshop.net.entity.History;

public interface HistoryDAO extends JpaRepository<History, Long>{
    List<History> findByTitle(String title);
}
