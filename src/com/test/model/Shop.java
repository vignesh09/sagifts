package com.test.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="shop")
public class Shop {
	
	@Id
	@Column(name="id")
	private int id;
	@Column(name="name")
	private String name;
	@Column(name="price")
	private String price;
	@Column(name="category")
	private String category;
	@Column(name="des")
	private String des;
	@Column(name="mainurl")
	private String mainurl;
	@Column(name="nexturl")
	private String nexturl;
	@Column(name="youtube")
	private String youtube;
	public Shop(int id, String name, String price, String category, String des, String mainurl, String nexturl,String youtube) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.category = category;
		this.des = des;
		this.mainurl = mainurl;
		this.nexturl = nexturl;
		this.youtube = youtube;
	}
	public Shop() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public String getMainurl() {
		return mainurl;
	}
	public void setMainurl(String mainurl) {
		this.mainurl = mainurl;
	}
	public String getNexturl() {
		return nexturl;
	}
	public void setNexturl(String nexturl) {
		this.nexturl = nexturl;
	}
	public String getYoutube() {
		return youtube;
	}
	public void setYoutube(String youtube) {
		this.youtube = youtube;
	}
	
}
