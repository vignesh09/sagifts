package com.test.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cmpny")
public class Cmpny {
	@Id
	@Column(name="id")
	private int id;
	@Column(name="arr")
	private int arr;
	@Column(name="name")
	private String name;
	public Cmpny(int id, int arr, String name) {
		super();
		this.id = id;
		this.arr = arr;
		this.name = name;
	}
	public Cmpny() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getArr() {
		return arr;
	}
	public void setArr(int arr) {
		this.arr = arr;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
