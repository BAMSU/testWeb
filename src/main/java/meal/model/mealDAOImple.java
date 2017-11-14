package meal.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class mealDAOImple implements mealDAO {
	
	private SqlSessionTemplate sst;
	
	

	public mealDAOImple(SqlSessionTemplate sst) {
		super();
		this.sst = sst;
	}

	public List getMealList(int idx) {
		return sst.selectList("mList", idx);
	}
	
	public List getMealList2(int idx) {
		return sst.selectList("mList2", idx);
	}

	public int insertM(mealDTO dto) {
		return sst.insert("mInsert", dto);
	}

	public int updateM(mealDTO dto) {
		return sst.update("mUpdate", dto);
	}

	public int deleteM(int idx) {
		return sst.delete("mDelete", idx);
	}

}
