package com.library.controller;

import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.library.model.fetch1;
import com.library.repository.fetrepro;

@Controller
public class fetchlibrary
{
	@Autowired
	public fetrepro er;
	
	@RequestMapping("/addlib")
	public String addfetch(@ModelAttribute fetch1 e) 
	{
		System.out.println(e);
		er.save(e);
		return"demo.jsp";
	}
	@RequestMapping("/datafetch")
	public String fetcha(Model m)
	{
		List<fetch1>e_data=er.findAll();
		System.out.println(e_data);
		m.addAttribute("data",e_data);
		return"datafetch.jsp";
	}
	@RequestMapping("/{id}")
	public String edit(@PathVariable int id,Model m)
	{
		fetch1 ob=er.findById(id).orElse(null);
		m.addAttribute("edit_data", ob);
		return "edit.jsp";
	}
	@RequestMapping("/edit/{id}")
	public String update(@PathVariable int id,@ModelAttribute fetch1 ob) 
	{
		fetch1 fet=er.findById(id).orElse(null);
		if(fet!=null) 
		{
			fet.setBookname(ob.getBookname());
			fet.setAuthorname(ob.getAuthorname());
			fet.setCategory(ob.getCategory());
			fet.setAvailable(ob.getAvailable());
			fet.setStatus(ob.getStatus());
//			private int bookid;
//			private String bookname;
//			private String authorname;
//			private String category;
//			private String available;
//			private String status;
			
			
		}
		er.save(fet);
		return"redirect:/datafetch";
	}
	@RequestMapping("delete/{id}")
	public String delete(@PathVariable int id)
	{
		er.deleteById(id);
		return"redirect:/datafetch";

	}

}
