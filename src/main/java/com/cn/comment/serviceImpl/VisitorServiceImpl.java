package com.cn.comment.serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.cn.comment.dao.IVisitorDao;
import com.cn.comment.pojo.Visitor;
import com.cn.comment.service.IVisitorService;

@Service  
public class VisitorServiceImpl implements IVisitorService {  
    @Resource  
    private IVisitorDao visitorDao; 
    
	@Override
	public void insert(Visitor lg) {
		this.visitorDao.insert(lg);
	}

	@Override
	public List<Visitor> queryListNumByBvisitorId(Visitor v1) {
		List<Visitor> vs = visitorDao.queryListNumByBvisitorId(v1);
		return vs;
	}

	@Override
	public List<Visitor> queryListByBvisitorId(Visitor v1) {
		List<Visitor> vs = visitorDao.queryListByBvisitorId(v1);
		return vs;
	}
} 