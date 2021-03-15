package com.skilldistillery.skimountains.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.skimountains.data.MountainDAO;
import com.skilldistillery.skimountains.entities.Mountain;
import com.skilldistillery.skimountains.entities.SlopeDifficulty;

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
	
	@RequestMapping(path={"updateForm.do"})
	public String getUpdateForm(int id, Model model) {
		
		model.addAttribute("difficulty", SlopeDifficulty.values());
		model.addAttribute("mt", dao.findById(id));
		
		return "mountains/updateMt";
	}
	
	@RequestMapping(path="update.do", method = RequestMethod.POST)
	public String updateMt(Model model, Mountain mt, RedirectAttributes redir) {
		
		dao.updateMt(mt);
		
		redir.addFlashAttribute("mt", dao.findById(mt.getId()));
		
		return "redirect:updated.do";
	}
	
	@RequestMapping(path="updated.do", method = RequestMethod.GET)
	public String mountainUpDated() {
		
		return "mountains/singleMt";
	}
	
	
}
