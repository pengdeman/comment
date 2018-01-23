package com.cn.comment.dao;

import java.util.List;

import com.cn.comment.pojo.User;


public interface IUserDao {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	User findLoginUserByLoginNameAndPassword(User record);

	List<User> findName(User record);

	List<User> findAll();
}