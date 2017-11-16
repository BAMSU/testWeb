package aroom.model;

import java.util.*;

public interface aRoomDAO {
	public List roomInfo(int idx);
	public List roomInfo2(int idx);
	public int cnt(int idx);
	public int insertR(aRoomDTO dto);
	public int updateR(aRoomDTO dto);
	public int deleteR(int idx);
	public int whatHall(int idx);
}
