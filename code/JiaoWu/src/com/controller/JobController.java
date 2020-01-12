package com.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Job;
import com.service.JobsService;

import net.sf.json.JSONArray;


@Controller
public class JobController {

	@Autowired
	private JobsService jobService;

	//1.查找所有的工作的毕业生
	@RequestMapping("/getAllJobs")
	public ModelAndView getAllJobs(HttpServletRequest request,HttpSession session) {
		List<Job> list = jobService.getAllJobs();
		session.setAttribute("jobs", list);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("/index.jsp");
		return modelAndView;
		}
	//2.分页所有毕业生
	@RequestMapping("/getPageJobs")
	public ModelAndView getPageJobs(HttpServletRequest request){
		String page = request.getParameter("currentPage");
		Integer currentPage=Integer.valueOf(page);
		if(page==null) {currentPage=1;}
		List<Job> jobsList = jobService.getPageJObs(currentPage, 4);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("jobList1",jobsList.get(0));
		modelAndView.addObject("jobList2",jobsList.get(1));
		modelAndView.addObject("jobList3",jobsList.get(2));
		modelAndView.addObject("jobList4",jobsList.get(3));
		modelAndView.addObject("currentPage",currentPage);

		HttpSession session = request.getSession();
		List<Map> tAttribute = jobService.getAllJobPartAttribute();
		
		JSONArray json = JSONArray.fromObject(tAttribute);
		String string=json.toString();
		session.setAttribute("AllJobsPartAttribute",json);
		

		System.out.println("-************************"+string);
		modelAndView.setViewName("/index.jsp");
		return modelAndView;
	}
//	//3.表格中获得毕业生的部分属性
//		@RequestMapping("/getAllJobsPartAttribute")
//		public ModelAndView getAllJobsPartAttribute(HttpServletRequest request){
//			
//			List<Job> jobsList = jobService.getAllJobPartAttribute();
//			ModelAndView modelAndView=new ModelAndView();
//			modelAndView.addObject("AllJobsPartAttribute",jobsList);
//			
//			modelAndView.setViewName("/index.jsp");
//			return modelAndView;
//			
//		}
		
}
