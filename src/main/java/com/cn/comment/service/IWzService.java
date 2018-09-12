package com.cn.comment.service;

import java.util.List;
import com.cn.comment.pojo.Wz;

public interface IWzService {

	public void insert(Wz lg);

	public List<Wz> wzList();

	public List<Wz> wzListbymail(Wz lg);

}
