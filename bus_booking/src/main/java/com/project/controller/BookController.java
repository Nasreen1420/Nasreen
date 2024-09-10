package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.model.Book;
import com.project.repository.BookRepository;

@Controller
public class BookController
{
	@Autowired
	private BookRepository bkrepo;
	
	@RequestMapping("/bookTicket")
	public String bookticket(@ModelAttribute Book ob)
	{
		bkrepo.save(ob);
		return "bookingsuccess.jsp";
	}
	
	@RequestMapping("/book")
	public String showbookingform(Model m)
	{
		m.addAttribute("ob", new Book());
		return "book.jsp";
		
	}
	

}
