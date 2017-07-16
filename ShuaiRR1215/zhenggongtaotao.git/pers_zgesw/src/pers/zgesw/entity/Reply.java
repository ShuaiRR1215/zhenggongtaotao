package pers.zgesw.entity;

import java.util.Date;

/**
 * 对应buyinfo
 * 
 * @author shuai
 *
 */
public class Reply {
	private Integer rid; // id
	private String content;// 回复内容
	private Date rTimes;// 回复时间
	private User user;// 回复人
	private BuyInfo buyInfo;// 该回复所属的帖子

	public Reply() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getRid() {
		return rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getrTimes() {
		return rTimes;
	}

	public void setrTimes(Date rTimes) {
		this.rTimes = rTimes;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public BuyInfo getBuyInfo() {
		return buyInfo;
	}

	public void setBuyInfo(BuyInfo buyInfo) {
		this.buyInfo = buyInfo;
	}

	@Override
	public String toString() {
		return "Reply [rid=" + rid + ", content=" + content + ", rTimes=" + rTimes + ", user=" + user + ", buyInfo="
				+ buyInfo + "]";
	}

}
