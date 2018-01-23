package com.cn.comment.dao;

import java.util.List;
import com.cn.comment.pojo.Visitor;


public interface IVisitorDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Visitor record);

    Visitor selectByPrimaryKey(Integer id);

	List<Visitor> queryListNumByBvisitorId(Visitor record);

	List<Visitor> queryListByBvisitorId(Visitor record);
}