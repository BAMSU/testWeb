package ahall.model;

import java.util.List;

public class HallListModule {
	public static String makeHallList(List<aHallDTO> hl){
		StringBuffer sb = new StringBuffer();
		sb.append("<div id='hallList'>");
		for(aHallDTO h : hl){
			sb.append("<p><a>"+h.getName()+"</a>&nbsp;&nbsp;<input type='button' value='?„ ?ƒ' "
					+ "onclick='selHall("+h.getIdx()+")' class='btn btn-info btn-sm'/></p>");
		}
		sb.append("</div>");
		return sb.toString();
	}
}
