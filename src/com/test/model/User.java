package com.test.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	
	@Id
	@Column(name="id")
	private int id;
	@Column(name="name")
	private String name;
	@Column(name="phone")
	private String phone;
	@Column(name="altphone")
	private String altphone;
	@Column(name="street1")
	private String street1;
	@Column(name="street2")
	private String street2;
	@Column(name="city")
	private String city;
	@Column(name="state")
	private String state;
	@Column(name="country")
	private String country;
	@Column(name="pincode")
	private String pincode;
	@Column(name="mail")
	private String mail;
	@Column(name="cmail")
	private String cmail;
	@Column(name="cphone")
	private String cphone;
	@Column(name="prodname")
	private String prodname;
	@Column(name="paid")
	private String paid;
	@Column(name="trackid")
	private String trackid;
	@Column(name="delivery")
	private String delivery;
	public User() {
		super();
	}
	
	public User(int id, String name, String phone, String altphone, String street1, String street2, String city, String state,
			String country, String pincode, String mail, String cmail, String cphone, String prodname, String paid, String trackid,String delivery) {
		super();
		this.name = name;
		this.phone = phone;
		this.altphone = altphone;
		this.street1 = street1;
		this.street2 = street2;
		this.city = city;
		this.state = state;
		this.country = country;
		this.pincode = pincode;
		this.mail = mail;
		this.cphone = cphone;
		this.cmail = cmail;
		this.prodname = prodname;
		this.paid = paid;
		this.trackid = trackid;
		this.delivery = delivery;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProdname() {
		return prodname;
	}
	public void setProdname(String prodname) {
		this.prodname = prodname;
	}
	public String getCmail() {
		return cmail;
	}
	public void setCmail(String cmail) {
		this.cmail = cmail;
	}
	public String getCphone() {
		return cphone;
	}
	public void setCphone(String cphone) {
		this.cphone = cphone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAltphone() {
		return altphone;
	}
	public void setAltphone(String altphone) {
		this.altphone = altphone;
	}
	public String getStreet1() {
		return street1;
	}
	public void setStreet1(String street1) {
		this.street1 = street1;
	}
	public String getStreet2() {
		return street2;
	}
	public void setStreet2(String street2) {
		this.street2 = street2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPaid() {
		return paid;
	}

	public void setPaid(String paid) {
		this.paid = paid;
	}

	public String getTrackid() {
		return trackid;
	}

	public void setTrackid(String trackid) {
		this.trackid = trackid;
	}

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	
	
}
