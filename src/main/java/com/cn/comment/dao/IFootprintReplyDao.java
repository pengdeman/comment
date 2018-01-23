package com.cn.comment.dao;

import java.util.List;
import com.cn.comment.pojo.FootprintReply;


public interface IFootprintReplyDao {
	
	List<FootprintReply> replyList(Integer articleId);
	
	int insert(FootprintReply record);
	
	int deleteByPrimaryKey(Integer id);
	
	FootprintReply selectByPrimaryKey(Integer id);

	List<FootprintReply> replyLists(FootprintReply reply);

	void updateSelective(FootprintReply footprintReply);
}
