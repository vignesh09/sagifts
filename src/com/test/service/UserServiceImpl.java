package com.test.service;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.test.DAO.UserDao;
import com.test.model.*;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao ud;
	@Override
	@Transactional
	public void create(Shop shop)
	{
		ud.create(shop);
	}
	
	@Override
	@Transactional
	public List<String> getcategory()
	{
		return ud.getcategory();
	}
	
	@Override
	@Transactional
	public List<String> getcategoryi()
	{
		return ud.getcategoryi();
	}
	
	@Override
	@Transactional
	public Imag getimag()
	{
		return ud.getimag();
	}
	
	@Override
	@Transactional
	public List<Shop> getall()
	{
		return ud.getall();
	}
	
	@Override
	@Transactional
	public void createUser(User user)
	{
		ud.createUser(user);
	}
	
	@Override
	@Transactional
	public void editorders(User list)
	{
		ud.editorders(list);
	}
	
	@Override
	@Transactional
	public void deleteorders(User list)
	{
		ud.deleteorders(list);
	}
	
	
	@Override
	@Transactional
	public List<User> getallorders()
	{
		return ud.getallorders();
	}
	
	@Override
	@Transactional
	public void update(Shop shop)
	{
		ud.update(shop);
	}
	
	@Override
	@Transactional
	public void delete(Shop shop)
	{
		ud.delete(shop);
	}
	
	@Override
	@Transactional
	public void sendmail(String to, String sub, String msg)
	{
		ud.sendmail(to,sub,msg);
	}
	
	@Override
	@Transactional
	public void addImages(Imag image)
	{
		ud.addImages(image);
	}
	@Override
	@Transactional
	public Shop getshopbyName(String shop_name)
	{
		return ud.getshopbyName(shop_name);
	}
	
	@Override
	@Transactional
	public int checkLastCmpny()
	{
		return ud.checkLastCmpny();
	}
	
	@Override
	@Transactional
	public void addcompany(Cmpny cmpny)
	{
		ud.addcompany(cmpny);
	}
	
	@Override
	@Transactional
	public List<String> getallcmpny()
	{
		return ud.getallcmpny();
	}
	
	@Override
	@Transactional
	public List<Cmpny> getallcmpnydetails()
	{
		return ud.getallcmpnydetails();
	}
	
	@Override
	@Transactional
	public void editthiscompany(String oldcmpny, Cmpny cmpny)
	{
		ud.editthiscompany(oldcmpny, cmpny);
	}
	
	@Override
	@Transactional
	public void deletethiscompany(Cmpny cmpny)
	{
		ud.deletethiscompany(cmpny);
	}
	
	@Override
	@Transactional
	public void changeOrder(int[] intArray)
	{
		ud.changeOrder(intArray);
	}
	
	@Override
	@Transactional
	public List<Shop> getsample(String category)
	{
		return ud.getsample(category);
	}
}
