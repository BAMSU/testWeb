package hall.model;

import java.util.List;

public class HallListModule {
	public static String makeHallList(List<HallDTO> hl){
		StringBuffer sb = new StringBuffer();
		sb.append("<div id='hallList'>");
		for(HallDTO h : hl){
			sb.append("<p><a>"+h.getName()+"</a>&nbsp;&nbsp;<input type='button' value='선택' "
					+ "onclick='selHall("+h.getIdx()+")' class='btn btn-info btn-sm'/></p>");
		}
		sb.append("</div>");
		return sb.toString();
	}
}
