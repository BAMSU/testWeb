package ahall.model;

import java.util.List;

public interface aHallDAO {
	public aHallDTO getHallInfo(int idx);
	public List getHallList();
	public List getHallGu();
	public List getHallListByGu(String gu);
	public List getHallListByName(String name);
	public int insertWd(aHallDTO dto);
	public int updateWd(aHallDTO dto);
	public int deleteWd(int idx);
	public int getTotelContByHall2();
	public List hallaList(int cp, int ls);
}