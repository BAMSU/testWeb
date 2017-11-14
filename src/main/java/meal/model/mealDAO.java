package meal.model;

import java.util.List;


public interface mealDAO {
	public List getMealList(int idx);
	public List getMealList2(int idx);
	public int insertM(mealDTO dto);
	public int updateM(mealDTO dto);
	public int deleteM(int idx);
}
