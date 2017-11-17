package review.model;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class ReviewDTO {
	private int review_idx;
	private int room_idx;
	private String subject;
	private String content;
	private String writer;
	private Date writedate;
	private int readnum;
	private String name;
	private int review_sum;
	private String img;
	private float average;
	private int avg1;
	private int avg2;
	private int avg3;
	private int avg4;
	private int avg5;

	
	
	public ReviewDTO() {
		super();
	}



	public ReviewDTO(int review_idx, int room_idx, String subject, String content, String writer, Date writedate,
			int readnum, String name, int review_sum, String img, float average, int avg1, int avg2, int avg3,
			int avg4, int avg5) {
		super();
		this.review_idx = review_idx;
		this.room_idx = room_idx;
		this.subject = subject;
		this.content = content;
		this.writer = writer;
		this.writedate = writedate;
		this.readnum = readnum;
		this.name = name;
		this.review_sum = review_sum;
		this.img = img;
		this.average = average;
		this.avg1 = avg1;
		this.avg2 = avg2;
		this.avg3 = avg3;
		this.avg4 = avg4;
		this.avg5 = avg5;
	}



	public int getReview_idx() {
		return review_idx;
	}



	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
	}



	public int getRoom_idx() {
		return room_idx;
	}



	public void setRoom_idx(int room_idx) {
		this.room_idx = room_idx;
	}



	public String getSubject() {
		return subject;
	}



	public void setSubject(String subject) {
		this.subject = subject;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}



	public String getWriter() {
		return writer;
	}



	public void setWriter(String writer) {
		this.writer = writer;
	}



	public Date getWritedate() {
		return writedate;
	}



	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}



	public int getReadnum() {
		return readnum;
	}



	public void setReadnum(int readnum) {
		this.readnum = readnum;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public int getReview_sum() {
		return review_sum;
	}



	public void setReview_sum(int review_sum) {
		this.review_sum = review_sum;
	}



	public String getImg() {
		return img;
	}



	public void setImg(String img) {
		this.img = img;
	}



	public float getAverage() {
		return average;
	}



	public void setAverage(float average) {
		this.average = average;
	}



	public int getAvg1() {
		return avg1;
	}



	public void setAvg1(int avg1) {
		this.avg1 = avg1;
	}



	public int getAvg2() {
		return avg2;
	}



	public void setAvg2(int avg2) {
		this.avg2 = avg2;
	}



	public int getAvg3() {
		return avg3;
	}



	public void setAvg3(int avg3) {
		this.avg3 = avg3;
	}



	public int getAvg4() {
		return avg4;
	}



	public void setAvg4(int avg4) {
		this.avg4 = avg4;
	}



	public int getAvg5() {
		return avg5;
	}



	public void setAvg5(int avg5) {
		this.avg5 = avg5;
	}






	
	
	
}
