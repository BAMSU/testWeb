package hall.model;

public class PageModule {
	
	public static String makePage(String pageName, int totalCnt, int listSize, int pageSize, int cp) {
		StringBuffer sb = new StringBuffer();

		int pageCnt=totalCnt/listSize+1;//�룯�빜�읂占쎌뵠筌욑옙占쎈땾
		if(totalCnt%listSize==0)pageCnt--;

		int userGroup=cp/pageSize;//占쎌겱占쎌삺占쎌맄燁살꼵�젃�뙴占�
		if(cp%pageSize==0)userGroup--;

		int pageStart=userGroup*pageSize+1;//占쎈읂占쎌뵠筌욑옙占쎈뻻占쎌삂占쎌맄燁삼옙
		int pageEnd=userGroup*pageSize+pageSize;//占쎈읂占쎌뵠筌욑옙占쎄국占쎌맄燁삼옙
		int pageCntGroup=pageCnt/pageSize-(pageCnt%pageSize==0?1:0);//筌띾뜆占쏙쭕�맪�읂占쎌뵠筌욑옙域밸챶竊�

		int previousCp = (userGroup-1)*pageSize+pageSize;//占쎈링占쎌몵嚥≪뮇�뵠占쎈짗占쎈뻻 占쎌겱占쎌삺占쎌맄燁삼옙
		int nextCp = (userGroup+1)*pageSize+1;//占쎈츟嚥≪뮇�뵠占쎈짗占쎈뻻 占쎌겱占쎌삺占쎌맄燁삼옙
	
		sb.append("<div id='rvp'><ul class='pagination'>");
		sb.append("<li class='page-item'>"
				+ "<a class='page-link' href='"+pageName+"&cp=1#reviewTab'>&laquo;</a></li>");
		if(userGroup!=0){
			sb.append("<li class='page-item'>"
					+ "<a class='page-link' href='"+pageName+"&cp="+previousCp
					+"#reviewTab'>&lt;</a></li>");
		}else{
			sb.append("<li class='page-item disabled'>"
					+ "<a class='page-link' href='"+pageName+"&cp="+previousCp
					+"#reviewTab'>&lt;</a></li>");
		}
		for(int i=pageStart;i<=pageEnd;i++){
			if(cp==i){
				sb.append("<li class='page-item active'><a class='page-link' "
						+ "href='"+pageName+"&cp="+i+"#reviewTab'>"+i+"</a></li>");
			}else{
				sb.append("<li class='page-item'><a class='page-link' "
						+ "href='"+pageName+"&cp="+i+"#reviewTab'>"+i+"</a></li>");
			}
			if(i==pageCnt)break;
		}
		if(userGroup!=pageCntGroup){
			sb.append("<li class='page-item'>"
					+ "<a class='page-link' href='"+pageName+"&cp="+nextCp
					+"#reviewTab'>&gt;</a></li>");
		}else{
			sb.append("<li class='page-item disabled'>"
					+ "<a class='page-link' href='"+pageName+"&cp="+nextCp
					+"#reviewTab'>&gt;</a></li>");
		}
		sb.append("<li class='page-item'>"
				+ "<a class='page-link' href='"+pageName+"&cp="+pageCnt+"#reviewTab'>&raquo;</a></li>");
		sb.append("</ul></div>");
		
		return sb.toString();
	}

}
