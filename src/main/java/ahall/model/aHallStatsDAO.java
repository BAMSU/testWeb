package ahall.model;

import java.util.List;

public interface aHallStatsDAO {
	public List getHallStatsList(int hallIdx,String type);
	public int getHallStatsRank(int hallIdx,String type);
	public int getHallCount();
}
