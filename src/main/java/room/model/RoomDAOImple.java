package room.model;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;

public class RoomDAOImple implements RoomDAO {
	
	private SqlSessionTemplate sst;
	
	public RoomDAOImple(SqlSessionTemplate sst) {
		this.sst = sst;
	}

	public List roomInfo(int hallIdx) {
		return sst.selectList("roomInfoSQL", hallIdx);
	}

}
