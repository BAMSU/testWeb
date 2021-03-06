package hallEstimate.model;

import java.util.*;
import hall.model.HallDTO;
import room.model.RoomDTO;


public interface HalleDAO {

	public List<HallDTO> hallList(Map map);
	public List<HallDTO> hallList2(Map map);
	public List<HallDTO> hallList3(String lineType, String search_text);
	public List<HallDTO> hallview();
	public HalleDTO halles(int idx);
	public HallDTO halle(int idx);
	public List<HallDTO> rankingList();
	public List<RoomDTO> hallroom(int idx);
	public List<String> hallstation(String line);
	public List<HallDTO> hallLinesearch(String station);
	public List<HallDTO> hallname(String name);
	public List<HalleDTO> hallestList();
}
