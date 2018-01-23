package com.cn.comment.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.cn.comment.pojo.User;

@Transactional
public interface IUserService {
	public User getUserById(int userId);

	public User findLoginUserByLoginNameAndPassword(String loginName, String password);

	public List<User> findName(String loginName, String mail);

	public void insert(User lg);  
	
	public void updateSelective(User user);

	public List<User> findAll();
}
