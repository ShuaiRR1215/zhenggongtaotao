package pers.zgesw.entity;

public class Admin {
	private Integer aid;
	private String username;
	private String password;

	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getAid() {
		return aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", username=" + username + ", password=" + password + "]";
	}

}
