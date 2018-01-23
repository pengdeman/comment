package com.cn.comment.serviceImpl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.cn.comment.dao.IFootprintReplyDao;
import com.cn.comment.pojo.FootprintReply;
import com.cn.comment.service.IFootprintReplyService;

@Service
public class FootprintReplyServiceImpl implements IFootprintReplyService{
	@Resource  
    private IFootprintReplyDao footprintDao;
	
	@Override
	public int insert(FootprintReply reply) {
		return footprintDao.insert(reply);
	}

	@Override
	public void deleteByPrimaryKey(int id) {
		this.footprintDao.deleteByPrimaryKey(id);
	}

	@Override
	public List<FootprintReply> replyList(Integer articleId) {
		return this.footprintDao.replyList(articleId);
	}

	@Override
	public FootprintReply selectByPrimaryKey(int id) {
		return this.footprintDao.selectByPrimaryKey(id);
	}

	@Override
	public List<FootprintReply> replyLists(FootprintReply reply) {
		return this.footprintDao.replyLists(reply);
	}

	@Override
	public void updateSelective(FootprintReply footprintReply) {
		this.footprintDao.updateSelective(footprintReply);
	}

}
