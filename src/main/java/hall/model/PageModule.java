package hall.model;

public class PageModule {
	
	public static String makePage(String pageName, int totalCnt, int listSize, int pageSize, int cp) {
		StringBuffer sb = new StringBuffer();

		int pageCnt=totalCnt/listSize+1;//珥앺럹�씠吏��닔
		if(totalCnt%listSize==0)pageCnt--;

		int userGroup=cp/pageSize;//�쁽�옱�쐞移섍렇猷�
		if(cp%pageSize==0)userGroup--;

		int pageStart=userGroup*pageSize+1;//�럹�씠吏��떆�옉�쐞移�
		int pageEnd=userGroup*pageSize+pageSize;//�럹�씠吏��걹�쐞移�
		int pageCntGroup=pageCnt/pageSize-(pageCnt%pageSize==0?1:0);//留덉�留됲럹�씠吏�洹몃９

		int previousCp = (userGroup-1)*pageSize+pageSize;//�븵�쑝濡쒖씠�룞�떆 �쁽�옱�쐞移�
		int nextCp = (userGroup+1)*pageSize+1;//�뮘濡쒖씠�룞�떆 �쁽�옱�쐞移�
	
		sb.append("<div id='rvp'><ul class='pagination'>");
		sb.append("<li class='page-item'>"
				+ "<a class='page-link' href='"+pageName+"?cp=1#reviewTab'>&laquo;</a></li>");
		if(userGroup!=0){
			sb.append("<li class='page-item'>"
					+ "<a class='page-link' href='"+pageName+"?cp="+previousCp
					+"#reviewTab'>&lt;</a></li>");
		}else{
			sb.append("<li class='page-item disabled'>"
					+ "<a class='page-link' href='"+pageName+"?cp="+previousCp
					+"#reviewTab'>&lt;</a></li>");
		}
		for(int i=pageStart;i<=pageEnd;i++){
			if(cp==i){
				sb.append("<li class='page-item active'><a class='page-link' "
						+ "href='"+pageName+"?cp="+i+"#reviewTab'>"+i+"</a></li>");
			}else{
				sb.append("<li class='page-item'><a class='page-link' "
						+ "href='"+pageName+"?cp="+i+"#reviewTab'>"+i+"</a></li>");
			}
			if(i==pageCnt)break;
		}
		if(userGroup!=pageCntGroup){
			sb.append("<li class='page-item'>"
					+ "<a class='page-link' href='"+pageName+"?cp="+previousCp
					+"#reviewTab'>&gt;</a></li>");
		}else{
			sb.append("<li class='page-item disabled'>"
					+ "<a class='page-link' href='"+pageName+"?cp="+nextCp
					+"#reviewTab'>&gt;</a></li>");
		}
		sb.append("<li class='page-item'>"
				+ "<a class='page-link' href='"+pageName+"?cp="+pageCnt+"#reviewTab'>&raquo;</a></li>");
		sb.append("</ul></div>");
		
		return sb.toString();
	}

}
