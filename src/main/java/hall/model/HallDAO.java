package hall.model;

import java.util.List;

public interface HallDAO {
	public HallDTO getHallInfo(int idx);
	public List getHallList();
	public List getHallGu();
	public List getHallListByGu(String gu);
	public List getHallListByName(String name);
}
