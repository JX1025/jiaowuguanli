package com.filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Job;
import com.service.JobsService;
import com.serviceimpl.JobServiceImpl;


public class AuthorityFilter implements Filter {

	private ServletContext context;
	private JobsService jobService;
    /**
     * Default constructor. 
     */
    public AuthorityFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
	
		//给jobservice赋值
		context = req.getServletContext();
		WebApplicationContext cxt =WebApplicationContextUtils.getWebApplicationContext(context);
		jobService = (JobsService) cxt.getBean(JobsService.class);
		
		HttpSession session = req.getSession();
		
		String page = req.getParameter("currentPage");
		Integer currentPage=Integer.valueOf(page);
		if(page==null) {currentPage=1;}
	
		List<Job> jobsList = jobService.getPageJObs(currentPage, 4);

		System.out.println("---------------------*****************************-过滤器："+jobsList);
		session.setAttribute("jobList1",jobsList.get(0));
		session.setAttribute("jobList2",jobsList.get(1));
		session.setAttribute("jobList3",jobsList.get(2));
		session.setAttribute("jobList4",jobsList.get(3));
		
		session.setAttribute("currentPage",currentPage);
		
		List<Job> partAttributeJobs = jobService.getAllJobPartAttribute();
		
		session.setAttribute("AllJobsPartAttribute",partAttributeJobs);
		
		
			chain.doFilter(req, resp);
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
	
		

	
	}

}
