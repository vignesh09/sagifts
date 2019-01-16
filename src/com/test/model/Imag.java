package com.test.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="imag")
public class Imag {
	@Id
	@Column(name="id")
	private int id;
	@Column(name="one")
	private String one;
	@Column(name="two")
	private String two;
	@Column(name="three")
	private String three;
	
	public Imag(int id, String one, String two, String three) {
		super();
		this.id = id;
		this.one = one;
		this.two = two;
		this.three = three;
	}

	public Imag() {
		super();
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getOne() {
		return one;
	}

	public void setOne(String one) {
		this.one = one;
	}

	public String getTwo() {
		return two;
	}

	public void setTwo(String two) {
		this.two = two;
	}

	public String getThree() {
		return three;
	}

	public void setThree(String three) {
		this.three = three;
	}

}
