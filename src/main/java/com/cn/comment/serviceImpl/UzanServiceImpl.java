package com.cn.comment.serviceImpl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.cn.comment.dao.IUzanDao;
import com.cn.comment.pojo.Uzan;
import com.cn.comment.service.IUzanService;

@Service  
public class UzanServiceImpl implements IUzanService {  
    @Resource  
    private IUzanDao uzanDao;

	@Override
	public void insert(Uzan lg) {
		this.uzanDao.insert(lg);
	}

	@Override
	public List<Uzan> queryzanlist(Uzan lg) {
		return this.uzanDao.queryzanlist(lg);
	}

} 