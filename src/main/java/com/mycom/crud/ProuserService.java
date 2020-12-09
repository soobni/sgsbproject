package com.mycom.crud;

import java.util.List;


public interface ProuserService {
	public int insertProuser(ProuserVO vo);
	public int deleteProuser(int seq);
	public int updateProuser(ProuserVO vo);
	public int move(ProuserVO vo);
	public ProuserVO getProuser(int seq);
	public ProuserVO getUser(ProuserVO vo);
	public List <ProuserVO> getProuserList();
}
