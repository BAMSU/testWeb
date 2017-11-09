package hall.model;

import java.util.List;

public interface HallDAO {
	public HallDTO getHallInfo(int idx);
	public List getHallList();
	public List getHallListByGu(String gu);
	public List getHallListByName(String name);
	public int insertWd(HallDTO dto);
	public int updateWd(HallDTO dto);
}
