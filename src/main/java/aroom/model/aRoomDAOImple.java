package aroom.model;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;

public class aRoomDAOImple implements aRoomDAO {
	
	private SqlSessionTemplate sst;
	
	public aRoomDAOImple(SqlSessionTemplate sst) {
		this.sst = sst;
	}

	public List roomInfo(int idx) {
		return sst.selectList("listR", idx);
	}
	
	public List roomInfo2(int idx) {
		return sst.selectList("listR2", idx);
	}
	
	public int whatHall(int idx) {
		return sst.selectOne("whatHall", idx);
	}
	
	public int cnt(int idx) {
		return sst.selectOne("cntR", idx);
	}
	
	public int insertR(aRoomDTO dto) {
		return sst.insert("insertR", dto);
	}
	
	public int updateR(aRoomDTO dto) {
		return sst.update("updateR", dto);
	}
	
	public int deleteR(int idx) {
		return sst.delete("deleteR", idx);
	}

}
