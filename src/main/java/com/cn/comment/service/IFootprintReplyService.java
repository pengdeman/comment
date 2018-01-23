package com.cn.comment.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.cn.comment.pojo.FootprintReply;

@Transactional
public interface IFootprintReplyService {
	
	public int insert(FootprintReply lg);

	void deleteByPrimaryKey(int parseInt);

	public List<FootprintReply> replyList(Integer articleId);

	public FootprintReply selectByPrimaryKey(int parseInt);

	public List<FootprintReply> replyLists(FootprintReply reply);

	public void updateSelective(FootprintReply footprintReply);
}
