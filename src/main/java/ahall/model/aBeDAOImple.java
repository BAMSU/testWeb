package ahall.model;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class aBeDAOImple implements aBeDAO {

	
	private SqlSessionTemplate sqlMap;

	public aBeDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public List beJoin(String type) {
		if(type.equals("0")) {
			return sqlMap.selectList("beLista");
		} else {
			if(type.equals("1")) {
				return sqlMap.selectList("beListb", "n");
			}
			return sqlMap.selectList("beListb", "y");
		}
		
	}
	
	public int bebe1(int be_idx) {
		return sqlMap.update("updateBebe1", be_idx);
	}
	
	
	public int bebe2(int be_idx) {
		return sqlMap.update("updateBebe2", be_idx);
	}
	
}










