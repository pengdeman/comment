package com.cn.comment.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.cn.comment.pojo.Uzan;

@Transactional
public interface IUzanService {

	public void insert(Uzan lg);

	public List<Uzan> queryzanlist(Uzan lg);  

}
