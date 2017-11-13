package hallStats.model;

import java.util.List;

public interface HallStatsDAO {
	public List getHallStatsList(int hallIdx,String type);
	public int getHallStatsRank(int hallIdx,String type);
	public int getHallCount();
	public int upHallStats(int hallIdx,String type);
}
