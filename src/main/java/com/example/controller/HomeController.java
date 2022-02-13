package com.example.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.UserModel;
import com.example.repository.Repo;

@Controller
public class HomeController {

	@Autowired
	private Repo repo;
	
	
	@GetMapping("/")
	public ModelAndView index() {
		return new ModelAndView("form");
	}

	@PostMapping("/save")
	public ModelAndView save(ModelMap map, @ModelAttribute UserModel model) {
		try {
			model = repo.save(model);
			map.put("model", model);
			map.put("message", "data save successfully");			
		} catch (Exception e) {
			map.put("message", "data save failed");		}

		return new ModelAndView("form" ,"data", map);
	}
	
	@GetMapping("/users")
	public ModelAndView table(ModelMap map) {
		List<UserModel> list = (List<UserModel>) repo.findAll();
		map.put("list", list);	
		return new ModelAndView("table" , map);
	}
	
	@GetMapping("/edit/{id}")
	public ModelAndView edit(ModelMap map , @PathVariable(value = "id")int id) {
	UserModel user= repo.findById(id).get();				
		return new ModelAndView("editForm" ,"user", user);
	}
	
	@PostMapping("/update")
	public ModelAndView update(ModelMap map, @ModelAttribute UserModel model) {
		try {
			model = repo.save(model);
			map.put("model", model);
			map.put("message", "data update successfully");			
		} catch (Exception e) {
			map.put("message", "data update failed");		}

		return new ModelAndView("form" , map);
	}
	
	@GetMapping("/delete/{id}")
	public ModelAndView delete(ModelMap map , @PathVariable(value = "id")int id) {
	UserModel user= repo.findById(id).get();
	repo.delete(user);
	map.put("message", "data delete successfully");
		return new ModelAndView("redirect:/users" , map);
	}
	
}
