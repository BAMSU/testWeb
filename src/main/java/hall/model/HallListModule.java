package hall.model;

import java.util.List;

public class HallListModule {
	public static String makeHallList(List<HallDTO> hl){
		StringBuffer sb = new StringBuffer();
		sb.append("<div id='hallList' style='overflow: auto;'>");
		for(HallDTO h : hl){
			sb.append("<p>"+h.getName()+"<input type='button' value='선택' "
					+ "onclick='selHall("+h.getIdx()+")'/></p>");
		}
		sb.append("</div>");
		return sb.toString();
	}
}
