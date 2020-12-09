package com.mycom.crud;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository
public class ProuserDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;
	@Autowired
	SqlSession sqlSession;
	
	public int move(ProuserVO vo) {
		int result = sqlSession.insert("Prouser.move",vo);
		return result;
	}

	public int insertProuser(ProuserVO vo) {
		int result = sqlSession.insert("Prouser.insertProuser",vo);
		return result;
	}
	
	public int deleteProuser(int seq) {
		int result = sqlSession.delete("Prouser.deleteProuser",seq);
		return result;
	}
	public int updateProuser(ProuserVO vo) {
		int result = sqlSession.update("Prouser.updateProuser",vo);
		return result;
		
	}
	public ProuserVO getProuser(int seq) {
		return sqlSession.selectOne("Prouser.getProuser",seq);
	}
	
	public ProuserVO getUser(ProuserVO vo) {
		return sqlSession.selectOne("Prouser.getUser",vo);
	}
	
	public List<ProuserVO> getProuserList(){
		return sqlSession.selectList("Prouser.getProuserList");
	}
}
	
	class ProuserRowMapper2 implements RowMapper<ProuserVO>{
		@Override
		public ProuserVO mapRow(ResultSet rs,int rowNum)throws SQLException{
			ProuserVO vo=new ProuserVO();
			vo.setSeq(rs.getInt("seq"));
			vo.setUserid(rs.getString("userid"));
			vo.setPassword(rs.getString("password"));
			vo.setEmail(rs.getString("email"));
			vo.setAccount(rs.getString("account"));
			vo.setGenre(rs.getString("genre"));
			vo.setRegdate(rs.getDate("regdate"));
			return vo;
		}
	}
	
	

