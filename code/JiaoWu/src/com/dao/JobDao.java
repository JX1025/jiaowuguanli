package com.dao;

import java.util.List;
import java.util.Map;

import com.bean.Job;

public interface JobDao {

	//获得所有的工作的毕业生
	List<Job> getAllJobs();
	//分页查询获得该页的工作的毕业生
	List<Job> getPageJObs(int currentpage,int sum);	
	//查询所有工作毕业生的序号，工作单位，岗位
	List<Map> getAllJobPartAttribute();	
}
