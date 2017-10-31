package yong.bbs.model;

import java.util.List;

public interface BbsDAO {
	public int bbsWrite(BbsDTO dto);
	public List<BbsDTO> bbsAllList(int cp, int ls);
	public BbsDTO bbsContent(int idx);
	public int getTotalCnt();
}
