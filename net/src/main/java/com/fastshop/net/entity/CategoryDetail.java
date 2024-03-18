package com.fastshop.net.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "categorydetails")
public class CategoryDetail implements Serializable {
    @Id
    @Column(name = "id", columnDefinition = "varchar(5)", nullable = false)
    String id;

    @Column(name = "property", columnDefinition = "varchar(70)", nullable = false)
    String property;

    @ManyToOne
    @JoinColumn(name = "Categoryid")
    Category category;
}
