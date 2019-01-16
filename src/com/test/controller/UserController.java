package com.test.controller;

import java.io.IOException;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpSession;
import com.test.model.*;
import com.test.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService us;
	  
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String dostart(Model model, HttpSession session) {
		try {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategoryi();
			model.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model.addAttribute("data",data);
			model.addAttribute("shop", new Shop()); 
			
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			
			return "index";
		}
		catch (Exception e) {
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/about",method=RequestMethod.GET)
	public String doabout(Model model, HttpSession session) {
		try {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model.addAttribute("data",data);
			model.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "about";
		}
		catch (Exception e) {
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String dostart2(Model model, HttpSession session) {
		try {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model.addAttribute("data",data);
			model.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
		catch (Exception e) {
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/adminadmin",method=RequestMethod.GET)
	public String doadmin(Model model, HttpSession session) {
		try {
			model.addAttribute("admin", new Admin()); 
			return "admin";
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model.addAttribute("data",data);
			model.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/insert",method=RequestMethod.GET)
	public String doinsert(@ModelAttribute("admin") Admin admin, Model model, HttpSession session) {
		try {
			if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
				model.addAttribute("admin",admin);
				model.addAttribute("shop", new Shop());
				model.addAttribute("imag", new Imag());
				List<String> companies = us.getallcmpny();
				model.addAttribute("companies",companies);
				return "insert";
			}
		else if((admin.getName().equals("arjun") && admin.getPass().equals("arjun") )) {
				session.setAttribute("adminName", admin.getName());
				session.setAttribute("adminPass", admin.getPass());
				model.addAttribute("admin",admin);
				model.addAttribute("shop", new Shop());
				model.addAttribute("imag", new Imag());
				List<String> companies = us.getallcmpny();
				model.addAttribute("companies",companies);
				return "insert";
			}
			else {
				session.setAttribute("adminName", "");
				session.setAttribute("adminPass", "");
				List<String> li = us.getcategory();
				model.addAttribute("categories",li);
				List<Shop> data=us.getall();
				model.addAttribute("data",data);
				model.addAttribute("shop", new Shop()); 
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}	
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model.addAttribute("data",data);
			model.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/view",method=RequestMethod.GET)
	public String doview( Model model, HttpSession session) {
		try {
			if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
				List<Shop> data=us.getall();
				model.addAttribute("data",data);
				return "view";
			}
			else {
				session.setAttribute("adminName", "");
				session.setAttribute("adminPass", "");
				List<String> li = us.getcategory();
				model.addAttribute("categories",li);
				List<Shop> data=us.getall();
				model.addAttribute("data",data);
				model.addAttribute("shop", new Shop()); 
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}
		}
		catch (Exception e) {
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
		
		@RequestMapping(value="/company",method=RequestMethod.GET)
		public String docompany( Model model, HttpSession session) {
			try {
				if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
					return "company";
				}
				else {
					session.setAttribute("adminName", "");
					session.setAttribute("adminPass", "");
					List<String> li = us.getcategory();
					model.addAttribute("categories",li);
					List<Shop> data=us.getall();
					model.addAttribute("data",data);
					model.addAttribute("shop", new Shop()); 
					if (session.getAttribute("imag")==null) {
						Imag imag=us.getimag();
						session.setAttribute("imag",imag);
					}
					return "index";
				}
			}
			catch (Exception e) {
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}
	}
		
		@RequestMapping(value="/addcompany",method=RequestMethod.GET)
		public String doaddcompany( Model model, HttpSession session) {
			try {
				if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
					model.addAttribute("cmpny", new Cmpny());
					int last=us.checkLastCmpny()+1;
					model.addAttribute("next",last);
					return "addCompany";
				}
				else {
					session.setAttribute("adminName", "");
					session.setAttribute("adminPass", "");
					List<String> li = us.getcategory();
					model.addAttribute("categories",li);
					List<Shop> data=us.getall();
					model.addAttribute("data",data);
					model.addAttribute("shop", new Shop()); 
					if (session.getAttribute("imag")==null) {
						Imag imag=us.getimag();
						session.setAttribute("imag",imag);
					}
					return "index";
				}
			}
			catch (Exception e) {
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}
	}
		
		@RequestMapping(value="/editcompany",method=RequestMethod.GET)
		public String doeditcompany( Model model, HttpSession session) {
			try {
				if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
					List<Cmpny> cmpny = us.getallcmpnydetails();
					model.addAttribute("cmpny",cmpny);
					model.addAttribute("company",new Cmpny());
					return "editCompany";
				}
				else {
					session.setAttribute("adminName", "");
					session.setAttribute("adminPass", "");
					List<String> li = us.getcategory();
					model.addAttribute("categories",li);
					List<Shop> data=us.getall();
					model.addAttribute("data",data);
					model.addAttribute("shop", new Shop()); 
					if (session.getAttribute("imag")==null) {
						Imag imag=us.getimag();
						session.setAttribute("imag",imag);
					}
					return "index";
				}
			}
			catch (Exception e) {
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}
	}
		@RequestMapping(value="/ordercompany",method=RequestMethod.GET)
		public String doordercompany( Model model, HttpSession session) {
			try {
				if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
					List<Cmpny> cmpny = us.getallcmpnydetails();
					model.addAttribute("cmpny",cmpny);
					ArrayList array1=new ArrayList();
					model.addAttribute("array",array1);
					return "orderCompany";
				}
				else {
					session.setAttribute("adminName", "");
					session.setAttribute("adminPass", "");
					List<String> li = us.getcategory();
					model.addAttribute("categories",li);
					List<Shop> data=us.getall();
					model.addAttribute("data",data);
					model.addAttribute("shop", new Shop()); 
					if (session.getAttribute("imag")==null) {
						Imag imag=us.getimag();
						session.setAttribute("imag",imag);
					}
					return "index";
				}
			}
			catch (Exception e) {
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}
	}
		@RequestMapping(value="/orderthiscompany",method=RequestMethod.GET)
		public String doorderthiscompany(@ModelAttribute("array") String array, Model model, HttpSession session) {
			try {
				
				if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
					
					String[] stringArray = array.split(" ");
				      int[] intArray = new int[stringArray.length];
				      for (int i = 0; i < stringArray.length; i++) {
				         String numberAsString = stringArray[i];
				         intArray[i] = Integer.parseInt(numberAsString);
				      }
				    us.changeOrder(intArray);
					List<Cmpny> cmpny = us.getallcmpnydetails();
					model.addAttribute("cmpny",cmpny);
					ArrayList array1=new ArrayList();
					model.addAttribute("array",array1);
					return "company";
				}
				else {
					session.setAttribute("adminName", "");
					session.setAttribute("adminPass", "");
					List<String> li = us.getcategory();
					model.addAttribute("categories",li);
					List<Shop> data=us.getall();
					model.addAttribute("data",data);
					model.addAttribute("shop", new Shop()); 
					if (session.getAttribute("imag")==null) {
						Imag imag=us.getimag();
						session.setAttribute("imag",imag);
					}
					return "index";
				}
			}
			catch (Exception e) {
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}
	}
		
		
		@RequestMapping(value="/addthiscompany",method=RequestMethod.GET)
		public String doaddthiscompany(@ModelAttribute("cmpny") Cmpny cmpny, Model model, HttpSession session) {
			try {
				if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
					us.addcompany(cmpny);
					return "company";
				}
				else {
					session.setAttribute("adminName", "");
					session.setAttribute("adminPass", "");
					List<String> li = us.getcategory();
					model.addAttribute("categories",li);
					List<Shop> data=us.getall();
					model.addAttribute("data",data);
					model.addAttribute("shop", new Shop()); 
					if (session.getAttribute("imag")==null) {
						Imag imag=us.getimag();
						session.setAttribute("imag",imag);
					}
					return "index";
				}
			}
			catch (Exception e) {
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}
	}
		
		@RequestMapping(value="/editthiscompany",method=RequestMethod.GET)
		public String doeditthiscompany(@ModelAttribute("cmpny") Cmpny cmpny, Model model, HttpSession session) {
			try {
				if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
					model.addAttribute("cmpny",cmpny);
					return "editthiscompany";
				}
				else {
					session.setAttribute("adminName", "");
					session.setAttribute("adminPass", "");
					List<String> li = us.getcategory();
					model.addAttribute("categories",li);
					List<Shop> data=us.getall();
					model.addAttribute("data",data);
					model.addAttribute("shop", new Shop()); 
					if (session.getAttribute("imag")==null) {
						Imag imag=us.getimag();
						session.setAttribute("imag",imag);
					}
					return "index";
				}
			}
			catch (Exception e) {
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}
	}
		
		@RequestMapping(value="/sureeditthiscompany",method=RequestMethod.GET)
		public String dosureeditthiscompany(@ModelAttribute("cmpny") Cmpny cmpny, @ModelAttribute("oldcmpny") String oldcmpny, Model model, HttpSession session) {
			try {
				if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
					us.editthiscompany(oldcmpny,cmpny);
					List<Cmpny> cmpny1 = us.getallcmpnydetails();
					model.addAttribute("cmpny",cmpny1);
					model.addAttribute("company",new Cmpny());
					return "editCompany";
				}
				else {
					session.setAttribute("adminName", "");
					session.setAttribute("adminPass", "");
					List<String> li = us.getcategory();
					model.addAttribute("categories",li);
					List<Shop> data=us.getall();
					model.addAttribute("data",data);
					model.addAttribute("shop", new Shop()); 
					if (session.getAttribute("imag")==null) {
						Imag imag=us.getimag();
						session.setAttribute("imag",imag);
					}
					return "index";
				}
			}
			catch (Exception e) {
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}
	}
		
		@RequestMapping(value="/deletethiscompany",method=RequestMethod.GET)
		public String dosureeditthiscompany(@ModelAttribute("cmpny") Cmpny cmpny, Model model, HttpSession session) {
			try {
				if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
					us.deletethiscompany(cmpny);
					List<Cmpny> cmpny1 = us.getallcmpnydetails();
					model.addAttribute("cmpny",cmpny1);
					model.addAttribute("company",new Cmpny());
					return "editCompany";
				}
				else {
					session.setAttribute("adminName", "");
					session.setAttribute("adminPass", "");
					List<String> li = us.getcategory();
					model.addAttribute("categories",li);
					List<Shop> data=us.getall();
					model.addAttribute("data",data);
					model.addAttribute("shop", new Shop()); 
					if (session.getAttribute("imag")==null) {
						Imag imag=us.getimag();
						session.setAttribute("imag",imag);
					}
					return "index";
				}
			}
			catch (Exception e) {
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}
	}
		
	@RequestMapping(value="/edit",method=RequestMethod.GET)
	public String doedit( Model model, HttpSession session) {
		try {
			if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
				List<Shop> data=us.getall();
				model.addAttribute("data",data);
				return "edit";
			}
			else {
				session.setAttribute("adminName", "");
				session.setAttribute("adminPass", "");
				List<String> li = us.getcategory();
				model.addAttribute("categories",li);
				List<Shop> data=us.getall();
				model.addAttribute("data",data);
				model.addAttribute("shop", new Shop()); 
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}	
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model.addAttribute("data",data);
			model.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/editchoice",method=RequestMethod.GET)
	public String doedit(@ModelAttribute("productName") String productName, Model model, HttpSession session) {
		try {
			if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
				List<Shop> data=us.getall();
				Shop item=new Shop();
				for(Shop each:data) {
					if((each.getName()).equals(productName)) {
						item=each;
					}
				}
				model.addAttribute("item",item);
				return "editing";
			}
			else {
				session.setAttribute("adminName", "");
				session.setAttribute("adminPass", "");
				List<String> li = us.getcategory();
				model.addAttribute("categories",li);
				List<Shop> data=us.getall();
				model.addAttribute("data",data);
				model.addAttribute("shop", new Shop()); 
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}	
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model.addAttribute("data",data);
			model.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/update",method=RequestMethod.GET)
	public String doupdate(@ModelAttribute("item") Shop item, Model model, HttpSession session) {
		try {
			if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
				model.addAttribute("shop",item);
				return "previewEdit";
			}
			else {
				session.setAttribute("adminName", "");
				session.setAttribute("adminPass", "");
				List<String> li = us.getcategory();
				model.addAttribute("categories",li);
				List<Shop> data=us.getall();
				model.addAttribute("data",data);
				model.addAttribute("shop", new Shop()); 
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model.addAttribute("data",data);
			model.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	
	@RequestMapping(value="/updateSure",method=RequestMethod.GET)
	public String doupdateSure(@ModelAttribute("shop") Shop shop, Model model, HttpSession session) {
			try {
				if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
					us.update(shop);
					List<Shop> data=us.getall();
					model.addAttribute("data",data);
					return "view";
				}
				else {
					session.setAttribute("adminName", "");
					session.setAttribute("adminPass", "");
					List<String> li = us.getcategory();
					model.addAttribute("categories",li);
					List<Shop> data=us.getall();
					model.addAttribute("data",data);
					model.addAttribute("shop", new Shop()); 
					if (session.getAttribute("imag")==null) {
						Imag imag=us.getimag();
						session.setAttribute("imag",imag);
					}
					return "index";
				}
			}
			catch (Exception e) {
				session.setAttribute("adminName", "");
				session.setAttribute("adminPass", "");
				List<String> li = us.getcategory();
				model.addAttribute("categories",li);
				List<Shop> data=us.getall();
				model.addAttribute("data",data);
				model.addAttribute("shop", new Shop()); 
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String dodelete(@ModelAttribute("productName") String productName,  Model model, HttpSession session) {
		try {
			if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
				model.addAttribute("shop",new Shop());
				List<Shop> data=us.getall();
				Shop item=new Shop();
				for(Shop each:data) {
					if((each.getName()).equals(productName)) {
						item=each;
					}
				}
				us.delete(item);
				List<Shop> data1=us.getall();
				model.addAttribute("data",data1);
				return "view";
			}
			else {
				session.setAttribute("adminName", "");
				session.setAttribute("adminPass", "");
				List<String> li = us.getcategory();
				model.addAttribute("categories",li);
				List<Shop> data=us.getall();
				model.addAttribute("data",data);
				model.addAttribute("shop", new Shop()); 
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}	
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model.addAttribute("data",data);
			model.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/orders",method=RequestMethod.GET)
	public String doorders( Model model, HttpSession session) {
		try {
			if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
				List<User> data=us.getallorders();
				model.addAttribute("data",data);
				model.addAttribute("user",new User());
				return "orders";
			}
			else {
				session.setAttribute("adminName", "");
				session.setAttribute("adminPass", "");
				List<String> li = us.getcategory();
				model.addAttribute("categories",li);
				List<Shop> data=us.getall();
				model.addAttribute("data",data);
				model.addAttribute("shop", new Shop()); 
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model.addAttribute("data",data);
			model.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/preview",method=RequestMethod.GET)
	public String dopreview(@ModelAttribute("shop") Shop shop, Model model, HttpSession session) {
		try {
			if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")){
				model.addAttribute("shop",shop);
				return "preview";
			}
			else {
				session.setAttribute("adminName", "");
				session.setAttribute("adminPass", "");
				List<String> li = us.getcategory();
				model.addAttribute("categories",li);
				List<Shop> data=us.getall();
				model.addAttribute("data",data);
				model.addAttribute("shop", new Shop()); 
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}	
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model.addAttribute("data",data);
			model.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String dologout(Model model, HttpSession session) {
		try {
				session.setAttribute("adminName", "");
				session.setAttribute("adminPass", "");
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model.addAttribute("data",data);
			model.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/insertAutoImage",method=RequestMethod.GET)
	public String doinsertAutoImage(@ModelAttribute("imag") Imag imag, Model model, HttpSession session) {
		try {
			if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")){
				model.addAttribute("imag",imag);
				return "previewImage";
			}
			else {
				session.setAttribute("adminName", "");
				session.setAttribute("adminPass", "");
				List<String> li = us.getcategory();
				model.addAttribute("categories",li);
				List<Shop> data=us.getall();
				model.addAttribute("data",data);
				model.addAttribute("shop", new Shop()); 
				if (session.getAttribute("imag")==null) {
					Imag imag1=us.getimag();
					session.setAttribute("imag",imag1);
				}
				return "index";
			}	
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model.addAttribute("data",data);
			model.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag1=us.getimag();
				session.setAttribute("imag",imag1);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/addImages",method=RequestMethod.GET)
	public String doaddImages(@ModelAttribute("imag") Imag imag, Model model, HttpSession session) {
		try {
			if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")){
				session.setAttribute("imag", null);
				us.addImages(imag);
				model.addAttribute("shop",new Shop());
				model.addAttribute("imag",new Imag());
				List<String> companies = us.getallcmpny();
				model.addAttribute("companies",companies);
				return "insert";
			}
			else {
				session.setAttribute("adminName", "");
				session.setAttribute("adminPass", "");
				List<String> li = us.getcategory();
				model.addAttribute("categories",li);
				List<Shop> data=us.getall();
				model.addAttribute("data",data);
				model.addAttribute("shop", new Shop()); 
				if (session.getAttribute("imag")==null) {
					Imag imag1=us.getimag();
					session.setAttribute("imag",imag1);
				}
				return "index";
			}	
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model.addAttribute("data",data);
			model.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag1=us.getimag();
				session.setAttribute("imag",imag1);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/interior",method=RequestMethod.GET)
	public String dointerior(@ModelAttribute("cat") String cat, Model model, HttpSession session) {
		try {
			List<Shop> data=us.getall();
			model.addAttribute("shop", new Shop()); 
			model.addAttribute("icategory",cat);
			model.addAttribute("data",data);
			return "products";
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model.addAttribute("data",data);
			model.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/create",method=RequestMethod.GET)
	public String dostart1(@ModelAttribute("shop") Shop shop, Model model, HttpSession session) {
			try {
				if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
					List<Shop> data=us.getall();
					for(Shop each:data) {
						if((each.getName()).equals(shop.getName())) {
							if (session.getAttribute("imag")==null) {
								Imag imag=us.getimag();
								session.setAttribute("imag",imag);
							}
							return "index";
						}
					}
					us.create(shop);
					List<Shop> data1=us.getall();
					model.addAttribute("data",data1);
					return "view";
				}
				else {
					session.setAttribute("adminName", "");
					session.setAttribute("adminPass", "");
					List<String> li = us.getcategory();
					model.addAttribute("categories",li);
					List<Shop> data=us.getall();
					model.addAttribute("data",data);
					model.addAttribute("shop", new Shop()); 
					if (session.getAttribute("imag")==null) {
						Imag imag=us.getimag();
						session.setAttribute("imag",imag);
					}
					return "index";
				}
			}
			catch (Exception e) {
				session.setAttribute("adminName", "");
				session.setAttribute("adminPass", "");
				List<String> li = us.getcategory();
				model.addAttribute("categories",li);
				List<Shop> data=us.getall();
				model.addAttribute("data",data);
				model.addAttribute("shop", new Shop()); 
				if (session.getAttribute("imag")==null) {
					Imag imag=us.getimag();
					session.setAttribute("imag",imag);
				}
				return "index";
			}
	}
	
	@RequestMapping(value="/choose",method=RequestMethod.GET)
	public String dochoose1(@ModelAttribute("shop") Shop shop, Model model1, HttpSession session) throws IOException {
		try {
			ModelMap model = new ModelMap();
			model.put("shop", shop.getName());	
			List<Shop> sample = us.getsample(shop.getCategory());
			
			model1.addAttribute("sample",sample);
			return "detials";
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model1.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model1.addAttribute("data",data);
			model1.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/track",method=RequestMethod.GET)
	public String dotrack(Model model1, HttpSession session) throws IOException {
		try {
			return "track";
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model1.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model1.addAttribute("data",data);
			model1.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/editorders",method=RequestMethod.GET)
	public String doeditorders(@ModelAttribute("list") User list,Model model1, HttpSession session) throws IOException {
		try {
			model1.addAttribute("list",list);
			model1.addAttribute("user",new User());
			return "editorders";
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model1.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model1.addAttribute("data",data);
			model1.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/changeorders",method=RequestMethod.GET)
	public String dochangeorders(@ModelAttribute("list") User list,Model model1, HttpSession session) throws IOException {
		try {
			us.editorders(list);
			model1.addAttribute("list",list);
			return "orderdetails";
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model1.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model1.addAttribute("data",data);
			model1.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/deleteorders",method=RequestMethod.GET)
	public String dodeleteorders(@ModelAttribute("list") User list,Model model1, HttpSession session) throws IOException {
		try {
			
			if(session.getAttribute("adminName").equals("arjun") && session.getAttribute("adminPass").equals("arjun")) {
				us.deleteorders(list);
				List<User> data=us.getallorders();
				model1.addAttribute("data",data);
				model1.addAttribute("user",new User());
				return "orders";
			}
			return "orders";
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model1.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model1.addAttribute("data",data);
			model1.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/vieworders",method=RequestMethod.GET)
	public String dotrack(@ModelAttribute("user") User user, Model model1, HttpSession session) throws IOException {
		try {
			model1.addAttribute("list",user);
			
			return "orderdetails";
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model1.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model1.addAttribute("data",data);
			model1.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/trackit",method=RequestMethod.GET)
	public String dotrackit(@ModelAttribute("name") String name,@ModelAttribute("email") String email,@ModelAttribute("phone") String phone,Model model1, HttpSession session) throws IOException {
		try {
			ArrayList<User> sep = new ArrayList<User>();
			int count=0;
			List<User> li=us.getallorders();
			for(User each:li) {
				if(each.getName().equals(name) && each.getMail().equals(email) && each.getPhone().equals(phone)) {
					sep.add(each);
					count=count=1;
				}
			}
			if(count==0) {
				model1.addAttribute("alert","<label style=\"color:red;\"> Wrong Creditionals </label>");
				return "track";
			}
			model1.addAttribute("list",sep);
			return "tracking";
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model1.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model1.addAttribute("data",data);
			model1.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/checkout",method=RequestMethod.GET)
	public String docheckout(@ModelAttribute("shop") Shop shop, Model model1, HttpSession session) {
		try {
			model1.addAttribute("user", new User());
			ModelMap model = new ModelMap();
			model.put("shop", shop);
			return "checkout";
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model1.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model1.addAttribute("data",data);
			model1.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/gobacktocheckout",method=RequestMethod.GET)
	public String dogobacktocheckout(@ModelAttribute("user") User user,@ModelAttribute("shop_name") String shop_name, Model model1, HttpSession session) {
		try {
			model1.addAttribute("user", new User());
			ModelMap model = new ModelMap();
			Shop shop=us.getshopbyName(shop_name);
			model1.addAttribute("user", user);
			model1.addAttribute("shop",shop);
			return "checkout";
		}
		catch (Exception e) {
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model1.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model1.addAttribute("data",data);
			model1.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/checkplaceorder",method=RequestMethod.POST)
	public String docheckplaceorder(@ModelAttribute("user") User user,@ModelAttribute("shop_name") String shop_name, Model model1, HttpSession session) {
		try {
			if((user.getPhone()).equals(user.getCphone()) && (user.getMail()).equals(user.getCmail()) && (user.getProdname()!=null)) {
				model1.addAttribute("user", user);
				Shop shop=us.getshopbyName(shop_name);
				model1.addAttribute("shop", shop);
				return "sureplaceorder";
			}
			else {
				if(user.getProdname()!=null) {
					model1.addAttribute("user", new User());
					ModelMap model = new ModelMap();
					List<Shop> data=us.getall();
					for(Shop shop:data) {
						if((shop.getName()).equals(user.getProdname())) {
							model1.addAttribute("shop", shop);
							return "checkout";
						}
					}
				}
			}
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model1.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model1.addAttribute("data",data);
			model1.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
		catch (Exception e) {
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
	
	@RequestMapping(value="/placeorder",method=RequestMethod.POST)
	public String doplaceorder(@ModelAttribute("user") User user, Model model1, HttpSession session) {
		try {
			if((user.getPhone()).equals(user.getCphone()) && (user.getMail()).equals(user.getCmail()) && (user.getProdname()!=null)) {
				us.createUser(user);
				us.sendmail(user.getMail(), "Order Placed", "Your order of "+user.getProdname()+" with id "+user.getId()+" has been successfully placed. Thank you!!");
				/*us.sendmail("sagiftsindia@gmail.com", "Order Placed", "Order of "+user.getProdname()+" with id "+user.getId()+" has been placed,<br />"+"name:"+user.getName()+"<br />phone:"+user.getPhone()+"<br />mail:"+user.getMail()+"<br />Address:"+user.getStreet1()+", "+user.getStreet2()+", "+user.getCity()+", "+user.getState()+", "+user.getCountry()+"<br />Alternate Phone:"+user.getAltphone());*/
				model1.addAttribute("user", user);
				return "success";
			}
			else {
				if(user.getProdname()!=null) {
					model1.addAttribute("user", new User());
					ModelMap model = new ModelMap();
					List<Shop> data=us.getall();
					for(Shop shop:data) {
						if((shop.getName()).equals(user.getProdname())) {
							model1.addAttribute("shop", shop);
							return "checkout";
						}
					}
				}
			}
			session.setAttribute("adminName", "");
			session.setAttribute("adminPass", "");
			List<String> li = us.getcategory();
			model1.addAttribute("categories",li);
			List<Shop> data=us.getall();
			model1.addAttribute("data",data);
			model1.addAttribute("shop", new Shop()); 
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
		catch (Exception e) {
			if (session.getAttribute("imag")==null) {
				Imag imag=us.getimag();
				session.setAttribute("imag",imag);
			}
			return "index";
		}
	}
}
