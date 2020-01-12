package com.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Job;

import com.dao.JobDao;

import com.service.JobsService;
@Service
public class JobServiceImpl  implements JobsService{
	
	
	@Autowired
	private JobDao JobDao;
	
	@Override
	public List<Job> getAllJobs() {
		return JobDao.getAllJobs();
		
	}

	@Override
	public List<Job>  getPageJObs(int currentpage,int sum){
		return  JobDao.getPageJObs(currentpage, sum);	
	}

	@Override
	public List<Map> getAllJobPartAttribute() {
		return  JobDao.getAllJobPartAttribute();	
	
	}

}
