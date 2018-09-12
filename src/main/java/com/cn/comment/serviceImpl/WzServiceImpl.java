package com.cn.comment.serviceImpl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.cn.comment.dao.IWzDao;
import com.cn.comment.pojo.Wz;
import com.cn.comment.service.IWzService;

@Service 
public class WzServiceImpl implements IWzService{
    @Resource  
    private IWzDao wzDao;

	@Override
	public void insert(Wz lg) {
		this.wzDao.insert(lg);
	}

	@Override
	public List<Wz> wzList() {
		return this.wzDao.wzList();
	}

	@Override
	public List<Wz> wzListbymail(Wz lg) {
		return this.wzDao.wzListbymail(lg);
	}

}
