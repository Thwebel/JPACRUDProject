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
		
		model.addAttribute("mountain", dao.findById(1));
		
		return "index";
	}
	
	@RequestMapping(path={"findById.do"})
	public String getMt(int id, Model model) {
		
		model.addAttribute("mt", dao.findById(id));
		
		return "mountains/singleMt";
	}
	
	@RequestMapping(path={"getAllMt.do"})
	public String geAllMt(Model model) {
		
		model.addAttribute("mountains", dao.findAll());
		
		return "mountains/allMt";
	}
	
	
	
}
