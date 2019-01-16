package com.test.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import com.test.model.*;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	SessionFactory fact;
	@Override
	public void create(Shop shop) {
		
		Session s=fact.getCurrentSession();
		s.save(shop);
	
	}
	
	@Autowired
	HttpSession session;
	
	@Override
	public List<String> getcategory() {
		if (session.getAttribute("categories")==null) {
			List<String> all = fact.getCurrentSession().createQuery("SELECT c.name FROM Cmpny c order by c.arr").list();
		session.setAttribute("categories",all);
		return all;
		}
		else {
			List<String> all=(List<String>) session.getAttribute("categories");
			return all;
		}
	}
	
	@Override
	public List<String> getcategoryi() {
		session.setAttribute("categories", null);
		List<String> all = fact.getCurrentSession().createQuery("SELECT c.name FROM Cmpny c order by c.arr").list();
		session.setAttribute("categories",all);
		return all;
	}
	
	@Override
	public Imag getimag() {

		List<Imag> list = fact.getCurrentSession().createQuery("from Imag").list();
		return list.get(0);
	
	}
	
	@Override
	public List<Shop> getall() {
		
		List<Shop> list = fact.getCurrentSession().createQuery("from Shop").list();
		return list;
	
	}
	
	@Override
	public void createUser(User user) {
		
		Session s=fact.getCurrentSession();
		s.save(user);
	
	}
	
	@Override
	public void editorders(User list) {
		
		Session s=fact.getCurrentSession();
		s.saveOrUpdate(list);
	
	}
	
	@Override
	public List<User> getallorders() {
		
		List<User> list = fact.getCurrentSession().createQuery("from User").list();
		return list;
	}
	
	@Override
	public void update(Shop shop) {
		
		Session s=fact.getCurrentSession();
		s.saveOrUpdate(shop);
	
	}
	
	@Override
	public void deleteorders(User list) {
		
		Session s=fact.getCurrentSession();
		s.delete(list);
	
	}
	
	
	@Override
	public void delete(Shop shop) {
		
		Session s=fact.getCurrentSession();
		s.delete(shop);
	
	}
	
	@Override
	public Shop getshopbyName(String shop_name) {

		List<Shop> list = fact.getCurrentSession().createQuery("from Shop").list();
		for(Shop each:list){
		
			if(each.getName().equals(shop_name)) {
				
				return each;
			}
		}
		
		return null;
	
	}
	
	@Override
	public int checkLastCmpny() {
		
		ArrayList li=new ArrayList();
		System.out.println("enterd the compny");
		List<Cmpny> list = fact.getCurrentSession().createQuery("from Cmpny").list();
		System.out.println(list);
		if(list.size()>0) {
			for(Cmpny each:list) {
				li.add(each.getArr());
			}
			return (int) Collections.max(li);
		}
		System.out.println("it is null");
		return 0;
	
	}
	
	@Override
	public void addcompany(Cmpny cmpny) {
		
		Session s=fact.getCurrentSession();
		s.save(cmpny);
	
	}
	
	@Override
	public List<String> getallcmpny() {
		
		ArrayList<String> cmpny = new ArrayList<String>();
		List<Cmpny> list = fact.getCurrentSession().createQuery("from Cmpny").list();
		for(Cmpny each:list){
			cmpny.add(each.getName());
		}
		
		return cmpny;
	
	}
	
	@Override
	public List<Cmpny> getallcmpnydetails() {
		
		ArrayList<String> cmpny = new ArrayList<String>();
		List<Cmpny> list = fact.getCurrentSession().createQuery("from Cmpny").list();
		
		return list;
	
	}
	
	@Override
	public void editthiscompany(String oldcmpny, Cmpny cmpny) {
		
		Session s=fact.getCurrentSession();
		s.saveOrUpdate(cmpny);
		List<Shop> list = fact.getCurrentSession().createQuery("from Shop").list();
		for(Shop each:list){
		
			if(each.getCategory().equals(oldcmpny)) {
				each.setCategory(cmpny.getName());
				s.save(each);
			}
		}
	
	}
	
	@Override
	public void deletethiscompany(Cmpny cmpny) {
		
		Session s=fact.getCurrentSession();
		s.delete(cmpny);
		List<Shop> list = fact.getCurrentSession().createQuery("from Shop").list();
		for(Shop each:list){
		
			if(each.getCategory().equals(cmpny.getName())) {
				s.delete(each);
			}
		}
	
	}
	
	
	@Override
	public List<Shop> getsample(String category) {
		
		List<Shop> list = fact.getCurrentSession().createQuery("from Shop where category='"+category+"'").list();
		return list;
	
	}
	
	@Override
	public void changeOrder(int[] intArray) {
		
		Session s=fact.getCurrentSession();
		List<Cmpny> list = fact.getCurrentSession().createQuery("from Cmpny").list();
		int i=0;
		if(list.size()==intArray.length) {
		for(Cmpny each:list){
			each.setArr(intArray[i]);
			i=i+1;
			s.save(each);
			}
		}
	
	}
	
	@Override
	public void sendmail(String to, String sub, String msg) {
		
		final String user="sagiftsindia@gmail.com";
		final String pass="95swetharjun97";
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
	    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	    props.put("mail.smtp.socketFactory.fallback", "false");
		javax.mail.Session session = javax.mail.Session.getInstance(props,new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user,pass);
			}
		});
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
			message.setSubject(sub);
			message.setText(msg);
			Transport.send(message);
			System.out.println("message send successfully");	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	@Override
	public void addImages(Imag image) {
		
		Session s=fact.getCurrentSession();
		s.createQuery("delete from Imag").executeUpdate();
		s.save(image);
	
	}
}
