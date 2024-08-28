package kr.ac.kopo.member.vo;

public class MemberVO {

	private String id;
	private String pwd;
	private String name;
	private String callno;
		
		public MemberVO() {
			super();
		}

		public MemberVO(String id, String pwd, String name, String callno) {
			super();
			this.id = id;
			this.pwd = pwd;
			this.name = name;
			this.callno = callno;
		}

		public String getcallno() {
			return callno;
		}

		public void setcallno(String callno) {
			this.callno = callno;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getId() {
			return id;
		}

		public void setId(String id) {
			this.id = id;
		}

		public String getPwd() {
			return pwd;
		}

		public void setPwd(String pwd) {
			this.pwd = pwd;
		}

		@Override
		public String toString() {
			return "MemberVO [callno=" + callno + ", name=" + name + ", id=" + id + ", pwd=" + pwd + "]";
		}
}
