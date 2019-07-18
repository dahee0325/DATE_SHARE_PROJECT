package dateShare.Model;

public class LoginInfo {
	
	private int u_num;
	private String u_id;
	
	
	public LoginInfo(int u_num, String u_id ) {
		super();
		this.u_id = u_id;
		this.u_num = u_num;
	}
	
	
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}


	public int getU_num() {
		return u_num;
	}


	public void setU_num(int u_num) {
		this.u_num = u_num;
	}


}