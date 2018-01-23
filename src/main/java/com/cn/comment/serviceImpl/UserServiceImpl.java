package com.cn.comment.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.comment.dao.IUserDao;
import com.cn.comment.pojo.User;
import com.cn.comment.service.IUserService;

@Service  
public class UserServiceImpl implements IUserService {  
    @Resource  
    private IUserDao userDao;  
    @Override  
    public User getUserById(int userId) {  
        return this.userDao.selectByPrimaryKey(userId);  
    }
	@Override
	public User findLoginUserByLoginNameAndPassword(String loginName, String password) {
		User record = new User();
		record.setLoginName(loginName);
		record.setPassword(password);
		return this.userDao.findLoginUserByLoginNameAndPassword(record);
	}
	@Override
	public List<User> findName(String userName, String mail) {
		System.out.println(userName+" -"+mail);
		User record = new User();
		record.setUserName(userName);
		record.setMail(mail);
		return this.userDao.findName(record);
	}
	@Override
	public void insert(User lg) {
		this.userDao.insert(lg);
	}
	@Override
	public void updateSelective(User user) {
		this.userDao.updateByPrimaryKeySelective(user);
	}
	@Override
	public List<User> findAll() {
		return this.userDao.findAll();
	}  
} 