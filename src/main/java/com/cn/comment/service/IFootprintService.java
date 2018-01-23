package com.cn.comment.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.cn.comment.pojo.Footprint;

@Transactional
public interface IFootprintService {

	public void insert(Footprint lg);

	Footprint getFootprintById(int footprintId);

	List<Footprint> footprintList(Footprint lg);

	public List<Footprint> fList(Footprint f);

	public void updateSelective(Footprint f);

	public void deleteByPrimaryKey(int parseInt);
	
	Footprint selectByPrimaryKey(int parseInt);

	public List<Footprint> publicfootprintList(Footprint fp);

}
