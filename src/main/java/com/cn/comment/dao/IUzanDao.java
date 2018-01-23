package com.cn.comment.dao;

import java.util.List;

import com.cn.comment.pojo.Uzan;

public interface IUzanDao {
	
    int deleteByPrimaryKey(Integer id);

    int insert(Uzan record);

    Uzan selectByPrimaryKey(Integer id);

	List<Uzan> queryzanlist(Uzan lg);

}