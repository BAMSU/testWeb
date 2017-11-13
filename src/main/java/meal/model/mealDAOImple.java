package meal.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class mealDAOImple implements mealDAO {
	
	private SqlSessionTemplate sst;
	
	

	public mealDAOImple(SqlSessionTemplate sst) {
		super();
		this.sst = sst;
	}

	public List getMealList() {
		// TODO Auto-generated method stub
		return null;
	}

	public int insertM(mealDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateM(mealDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteM(int idx) {
		// TODO Auto-generated method stub
		return 0;
	}

}
