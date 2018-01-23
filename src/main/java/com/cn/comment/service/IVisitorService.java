package com.cn.comment.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.cn.comment.pojo.Visitor;

@Transactional
public interface IVisitorService {

	public void insert(Visitor lg);

	public List<Visitor> queryListNumByBvisitorId(Visitor v1);

	public List<Visitor> queryListByBvisitorId(Visitor v1);  
	
}
