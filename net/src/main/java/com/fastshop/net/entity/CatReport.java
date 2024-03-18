package com.fastshop.net.entity;

import java.io.Serializable;
import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name="cat_report")
public class CatReport {
    @Id
    @Column(name = "id", columnDefinition = "varchar(5)", nullable = false)
    private int id;

    @Column(name = "report_group", columnDefinition = "varchar(70)", nullable = false)
    private Serializable group;

    @Column(name = "count")
    private Long count;
    public CatReport(Category category, Long count) {
        this.group = category.getName();
        this.count = count;
    }
    public CatReport() {

    }
}