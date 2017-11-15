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
	
	public int cnt(int idx) {
		return sst.selectOne("cntR", idx);
	}
	
	public int insertR(aRoomDTO dto) {
		return sst.insert("insertR", dto);
	}

}
