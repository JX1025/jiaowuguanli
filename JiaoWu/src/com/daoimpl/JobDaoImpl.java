package com.daoimpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;


import com.bean.Job;

import com.dao.JobDao;


import freemarker.template.utility.NormalizeNewlines;


@Repository
public class JobDaoImpl extends BaseDaoImpl implements JobDao {

	//1.查询所有的工作的毕业生
	@Override
	public List<Job> getAllJobs() {
		String hql="from Job";
		List<Job> list = getSession().createQuery(hql).list();
		return list;
	}

	//2.分页查询工作的毕业生
	@Override
	public List<Job> getPageJObs(int currentpage,int sum){
		Session session=getSession();
		String hql="from Job";
		Query query=session.createQuery(hql);
		query.setFirstResult((currentpage-1)*sum);
		query.setMaxResults(sum);
		List <Job>list = query.list();
		
		return list;
	}

	@Override
	public List<Map> getAllJobPartAttribute() {
		String hql="select u.id,u.name,u.company,u.post from Job u";
		
		List<Object[]> list = getSession().createQuery(hql).list();
		List<Map> list2=new  ArrayList<Map>(); 
		for(Object[] u:list) {
			Map map =new HashMap<>();
			map.put("id", Integer.parseInt(u[0].toString()));
			map.put("name", u[1].toString());
			map.put("company", u[2].toString());
			map.put("post", u[3].toString());
			System.out.println("jobbbbbbbbbbbbbbbbbbbbb"+map.toString());
			list2.add(map);
		}
		System.out.println("//////"+list2.get(0).toString());
		return list2;
		
	}
	

}
