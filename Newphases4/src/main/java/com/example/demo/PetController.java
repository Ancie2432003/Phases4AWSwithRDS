package com.example.demo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PetController {

	@Autowired
	PetService service;
	@ResponseBody
	@RequestMapping("/")
	public ModelAndView defaultpage(HttpServletRequest req, HttpServletResponse res)
	{
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Home.jsp");
		return mv;
	}
	@ResponseBody
	@RequestMapping("/home")
	public ModelAndView homepage(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Home.jsp");
		return mv;
	}
	@ResponseBody
	@RequestMapping("/login")
	public ModelAndView loginpage(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		Petname e= new Petname();
		e.setUsername(req.getParameter("username"));
		e.setPwd(req.getParameter("password"));
		if(e == e) {
			mv.setViewName("login.jsp");
			mv.addObject("pet", e);
		} else
			mv.setViewName("badcredit.jsp");
		return mv;
	}
	@ResponseBody
	@RequestMapping("/insert")
	public ModelAndView insertpage(HttpServletRequest req, HttpServletResponse res)
	{
		ModelAndView mv = new ModelAndView();
		Petname e =new Petname() ;
		e.setPetname(req.getParameter("petname"));
		e.setOwnername(req.getParameter("petownername"));
		e.setDoctorname(req.getParameter("doctorname"));
		e.setRate(Integer.parseInt(req.getParameter("rate")));
		e.setTotalprice(Double.parseDouble(req.getParameter("totalrate")));
		if(service.insert(e)!=null) {
			mv.setViewName("insertpage.jsp");
		}
		return mv;
	}
	@ResponseBody
	@RequestMapping("/getall")
	public ModelAndView getallOpr(HttpServletRequest request,HttpServletResponse response) {
	ModelAndView mv=new ModelAndView();
	List<Petname> list=service.getall();
	mv.setViewName("petrecord.jsp");
	mv.addObject("list", list);
		return mv;
		
	}

	
	
}
