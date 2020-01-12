package com.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="job")
public class Job {
	@Id
	@Column(name="job_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(name="job_name")
	private String name;
	@Column(name="job_salary")
	private String salary;
	@Column(name="job_company")
	private String company;
	@Column(name="job_exprience")
	private String exprience;
	@Column(name="job_motto")
	private String motto;
	@Column(name="job_sclass")
	private String sclass;
	@Column(name="job_post")
	private String post;

	public Job() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	

	public Job(int id, String name, String company, String post) {
		super();
		this.id = id;
		this.name = name;
		this.company = company;
		this.post = post;
	}




	public Job(int id, String name, String salary, String company, String exprience, String motto, String sclass,
			String post) {
		super();
		this.id = id;
		this.name = name;
		this.salary = salary;
		this.company = company;
		this.exprience = exprience;
		this.motto = motto;
		this.sclass = sclass;
		this.post = post;
	}



	public String getPost() {
		return post;
	}



	public void setPost(String post) {
		this.post = post;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getExprience() {
		return exprience;
	}
	public void setExprience(String exprience) {
		this.exprience = exprience;
	}
	public String getMotto() {
		return motto;
	}
	public void setMotto(String motto) {
		this.motto = motto;
	}
	public String getSclass() {
		return sclass;
	}
	public void setSclass(String sclass) {
		this.sclass = sclass;
	}




	
	
	
}
