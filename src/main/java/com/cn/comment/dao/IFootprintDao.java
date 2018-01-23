package com.cn.comment.dao;

import java.util.List;

import com.cn.comment.pojo.Footprint;

public interface IFootprintDao {

	void insert(Footprint lg);
	
	Footprint selectByPrimaryKey(Integer id);

	List<Footprint> footprintList(Footprint lg);

	List<Footprint> fList(Footprint f);

	void updateSelective(Footprint f);

	void deleteByPrimaryKey(int parseInt);

	List<Footprint> publicfootprintList(Footprint fp);

}
