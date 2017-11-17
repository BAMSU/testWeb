package ahall.model;

import java.util.*;

import hall.model.HallDTO;
import review.model.ReviewDTO;

public interface aHalleDAO {

	public List<HallDTO> hallList(String hallType,String menuType,String mealCost,String guest,String lineType,String search_text);
	public List<HallDTO> hallview();
	public List<aHalleDTO> hallestList();
	public int insertEs(aHalleDTO dto);
	public int updateEs(aHalleDTO dto);
}
