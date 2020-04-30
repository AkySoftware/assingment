package com.app.serosoft.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.serosoft.hib.entity.User;
import com.app.serosoft.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	 @RequestMapping(value="/",method = RequestMethod.GET)
		public String list(Model model) {
			model.addAttribute("listUsers", userService.list());
			return "user";
		}
	 
	 @RequestMapping(value="/add-user",method = RequestMethod.GET)
		public String add(Model model) {
			model.addAttribute("user", new User());
			return "add-user";
		}  
	
	@RequestMapping(value="/save_user", method= RequestMethod.POST)
	public String add(@ModelAttribute("user") User b , Model model){
		if(b.getId()==0){
			int id = userService.add(b);
			}
		else{			
			userService.update(b);				
		}
		return "redirect:/";		
	}
	        
	    @RequestMapping("/edit/{id}")
		public String edit(@PathVariable("id") int id, Model model) {
	      	model.addAttribute("user", userService.getById(id));
			return "add-user";
		}
	       
	    @RequestMapping("/remove/{id}")
		public String removeBank(@PathVariable("id") int id) {
			userService.remove(id);
			return "redirect:/";
		}

}
