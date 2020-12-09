package com.mycom.crud;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProuserServiceImpl implements ProuserService{
	@Autowired
	ProuserDAO prouserDAO;
	
	@Override
	public int insertProuser(ProuserVO vo) {
		return prouserDAO.insertProuser(vo);
	}
	@Override
	public int deleteProuser(int seq) {
		return prouserDAO.deleteProuser(seq);
	}
	@Override
	public int updateProuser(ProuserVO vo) {
		return prouserDAO.updateProuser(vo);
	}
	@Override
	public ProuserVO getProuser(int seq) {
		return prouserDAO.getProuser(seq);
	}
	@Override
	public List<ProuserVO> getProuserList(){
		return prouserDAO.getProuserList();
	}
	@Override
	public ProuserVO getUser(ProuserVO vo) {
		// TODO Auto-generated method stub
		return prouserDAO.getUser(vo);
	}
	@Override
	public int move(ProuserVO vo) {
		return prouserDAO.insertProuser(vo);
	}
	

}
