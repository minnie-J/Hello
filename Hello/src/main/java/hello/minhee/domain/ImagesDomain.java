package hello.minhee.domain;

public class ImagesDomain {
	private int ino;
	private int pno;
	private String url;
	
	public ImagesDomain() {}

	public ImagesDomain(int ino, int pno, String url) {
		this.ino = ino;
		this.pno = pno;
		this.url = url;
	}

	public int getIno() {
		return ino;
	}

	public void setIno(int ino) {
		this.ino = ino;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
	
	

}
