package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.model.Bus;
import com.project.repository.BusRepository;

@Controller
public class BusController 
{
	@Autowired
	private BusRepository brepo;
	
	@RequestMapping("/admin")
	public String admin()
	{
		return "Admin.jsp";
	}
	
	@RequestMapping("/add")
	public String showAddBusForm(@ModelAttribute Bus ob) 
	{
		brepo.save(ob);
        return "bussuccess.jsp"; // This is the name of the JSP file
    }
	
	@RequestMapping("/list")
	public String buslist(Model m)
	{
		List <Bus> al = brepo.findAll();
		m.addAttribute("buses", al);
		return "buslist.jsp";
	}

}
