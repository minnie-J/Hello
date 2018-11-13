package hello.minhee.domain;

public class ProjectsDomain {
	private int pno;
	private String title;
	private String content;
	private String charge;
	private String thumbnail;
	private String downlink;
	private String category;
	private String type;
	
	public ProjectsDomain() {}

	public ProjectsDomain(int pno, String title, String content, String charge, String thumbnail, String downlink, String category, String type) {
		this.pno = pno;
		this.title = title;
		this.content = content;
		this.charge = charge;
		this.thumbnail = thumbnail;
		this.downlink = downlink;
		this.category = category;
		this.type = type;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
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

	public String getCharge() {
		return charge;
	}

	public void setCharge(String charge) {
		this.charge = charge;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getDownlink() {
		return downlink;
	}

	public void setDownlink(String downlink) {
		this.downlink = downlink;
	}
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	

}
