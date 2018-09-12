package com.cn.comment.dao;

import java.util.List;
import com.cn.comment.pojo.Wz;

public interface IWzDao {

	int insert(Wz record);

	List<Wz> wzList();

	List<Wz> wzListbymail(Wz lg);
}
