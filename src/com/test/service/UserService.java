package com.test.service;

import java.util.*;

import com.test.model.Cmpny;
import com.test.model.Imag;
import com.test.model.Shop;
import com.test.model.User;

public interface UserService {
	
	void create(Shop shop);
	List<Shop> getall();
	List<User> getallorders();
	void createUser(User user);
	void update(Shop shop);
	void delete(Shop item);
	void sendmail(String to, String sub, String msg);
	void addImages(Imag image);
	Imag getimag();
	List<String> getcategory();
	List<String> getcategoryi();
	Shop getshopbyName(String shop_name);
	void editorders(User list);
	void deleteorders(User list);
	int checkLastCmpny();
	void addcompany(Cmpny cmpny);
	List<String> getallcmpny();
	List<Cmpny> getallcmpnydetails();
	void editthiscompany(String oldcmpny, Cmpny cmpny);
	void deletethiscompany(Cmpny cmpny);
	void changeOrder(int[] intArray);
	List<Shop> getsample(String category);

}
