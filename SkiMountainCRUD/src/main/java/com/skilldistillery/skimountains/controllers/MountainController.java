package com.skilldistillery.skimountains.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.skimountains.data.MountainDAO;

@Controller
public class MountainController {
	
	@Autowired
	private MountainDAO dao;
	
	@RequestMapping(path={"/", "home.do"})
	public String index(Model model) {
		
		model.addAttribute("moutain", dao.findById(1));
		
		return "index";
	}
}
