package hallEstimate.model;

import java.util.*;

import hall.model.HallDTO;

public interface HalleDAO {

	public List<HallDTO> hallList(String hallType,String menuType,String mealCost,String guest,String lineType,String search_text);
	public List<HallDTO> hallview();
	public List<HalleDTO> hallestList();
	public List<HallDTO> hallreview();
	
}
