package yong.memo.model;

public class MemoDTO {

	private int idx;
	private String title;
	private String content;
	
	public MemoDTO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public MemoDTO(int idx, String title, String content) {
		super();
		this.idx = idx;
		this.title = title;
		this.content = content;
	}

	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@Override
	public String toString() {
		String str="[��ȣ:"+idx+"]\n[����:"+title+"]\n[����:"+content+"]";
		return str;
	}
	
}
