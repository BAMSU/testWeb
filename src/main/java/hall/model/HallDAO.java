package hall.model;

import java.util.List;

public interface HallDAO {
	public HallDTO getHallInfo(int idx);
	public List getHallList();
	public List getHallGu();
	public List getHallListByGu(String gu);
	public List getHallListByName(String name);
<<<<<<< HEAD
	public int insertWd(HallDTO dto);
	public int updateWd(HallDTO dto);
	public int deleteWd(int idx);
	public List getHallGu();
}
=======
}
>>>>>>> branch 'master' of https://github.com/BAMSU/testWeb.git
