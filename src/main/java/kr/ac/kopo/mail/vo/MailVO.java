package kr.ac.kopo.mail.vo;

public class MailVO {

	private String title;
	private String writer;
	private String dear;
	private String msg;
	
	public MailVO() {
		super();
	}
	
	public MailVO(String title, String writer, String dear, String msg) {
		super();
		this.title = title;
		this.writer = writer;
		this.dear = dear;
		this.msg = msg;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getDear() {
		return dear;
	}

	public void setDear(String dear) {
		this.dear = dear;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "MailVO [title=" + title + ", writer=" + writer + ", dear=" + dear + ", msg=" + msg + "]";
	}

	public static String getId() {
		// TODO Auto-generated method stub
		return null;
	}


}