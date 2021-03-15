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
	
	// Home
	@RequestMapping(path={"/", "home.do"})
	public String index(Model model) {
		
		return "index";
	}
// Get	
	// Get Id
	@RequestMapping(path={"findById.do"})
	public String getMt(int id, Model model) {
		
		model.addAttribute("mt", dao.findById(id));
		
		return "mountains/singleMt";
	}
	
	// Get All
	@RequestMapping(path={"getAllMt.do"})
	public String geAllMt(Model model) {
		
		model.addAttribute("mountains", dao.findAll());
		
		return "mountains/allMt";
	}
// Create
	// Create Mountain Form
	@RequestMapping(path={"createForm.do"})
	public String getCreateForm(Model model) {
		
		model.addAttribute("difficulty", SlopeDifficulty.values());
		
		return "mountains/createMt";
	}
	
	// Create Mountain
	@RequestMapping(path={"create.do"})
	public String createMountain(Mountain mt, Model model, RedirectAttributes redir) {
		Mountain newMt;
		newMt = dao.addNewMt(mt);
		
		redir.addFlashAttribute("mt", dao.findById(newMt.getId()));
		System.out.println(newMt.getId());
		return "redirect:created.do";
	}
	// Display Create Mountain
	@RequestMapping(path="created.do")
	public String mountainCreated() {
		
		return "mountains/singleMt";
	}
// Update	
	// Update Mountain Form
	@RequestMapping(path={"updateForm.do"})
	public String getUpdateForm(int id, Model model) {
		
		model.addAttribute("difficulty", SlopeDifficulty.values());
		model.addAttribute("mt", dao.findById(id));
		
		return "mountains/updateMt";
	}
	
	// Update Mountain
	@RequestMapping(path="update.do", method = RequestMethod.POST)
	public String updateMt(Model model, Mountain mt, RedirectAttributes redir) {
		
		dao.updateMt(mt);
		
		redir.addFlashAttribute("mt", dao.findById(mt.getId()));
		
		return "redirect:updated.do";
	}
	
	// Display Updated Mountain
	@RequestMapping(path="updated.do", method = RequestMethod.GET)
	public String mountainUpdated() {
		
		return "mountains/singleMt";
	}

// Delete
	// Delete Mountain
	@RequestMapping(path="delete.do")
	public String deleteMountain(int id, Model model) {
		
		Mountain mt = dao.findById(id);
		
		model.addAttribute("deleted", dao.deleteMt(mt));
		
		return "mountains/mountainDeleted";
	}
	
}
