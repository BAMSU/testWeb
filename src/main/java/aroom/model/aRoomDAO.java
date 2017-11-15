package aroom.model;

import java.util.*;

public interface aRoomDAO {
	public List roomInfo(int idx);
	public int cnt(int idx);
	public int insertR(aRoomDTO dto);
}
