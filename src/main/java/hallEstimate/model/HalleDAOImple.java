package hallEstimate.model;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;

public class HalleDAOImple implements HalleDAO {

	private SqlSessionTemplate sqlMap;
	
	public HalleDAOImple(SqlSessionTemplate sqlMap){
		super();
		this.sqlMap=sqlMap;
	}
	
	public int hallEst(HalldDTO ddto){
		int count = sqlMap.insert("halldrink",ddto);
		return count;
	}
	
	public int hallEst(HallmDTO mdto){
		int count = sqlMap.insert("hallmest",mdto);
		return count;
	}
	
	public int hallEst(HallfDTO fdto){
		int count = sqlMap.insert("hallfe",fdto);
		return count;
	}
	public int hallEst(HallcDTO cdto){
		int count = sqlMap.insert("hallch",cdto);
			return count;
		
	}

	public List<HalleDTO> hallestmateAllList() {
		List<HalleDTO> list=sqlMap.selectList("hallestmateAllList");
		return list;
	}
	
}
