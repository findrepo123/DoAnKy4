package com.fastshop.net.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
@SuppressWarnings("serial")
@Data
@Entity 
@Table(name = "Categories")
public class Category implements Serializable{
	@Id
	@Column(name = "id", columnDefinition = "varchar(255)", nullable = false, unique = true)
	String id;

	@NotBlank(message = "Vui lòng nhập tên thể loại hàng.")
	@Column(name = "name", columnDefinition = "varchar(25)", nullable = false, unique = true)
	String name;

	Boolean status;

	@Column(name = "unit", columnDefinition = "varchar(25)")
	String unit;

	@JsonIgnore
	@OneToMany(mappedBy = "category")
	List<Product> products;

	@JsonIgnore
	@OneToMany(mappedBy = "category")
	List<CategoryDetail> categoryDetails;
}
