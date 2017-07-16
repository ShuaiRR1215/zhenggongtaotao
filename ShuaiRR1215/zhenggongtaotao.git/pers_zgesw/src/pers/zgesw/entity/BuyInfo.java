package pers.zgesw.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class BuyInfo {
	private Integer bid;// id
	private String bTitle;// 标题
	private Double bContent;// 帖子内容
	private Date pubTimes;// 发表时间
	private Date lastTimes;// 最后被更新时间
	private Integer bViews;// 浏览量
	private User user;// 所属用户

	private Set<Reply> replys = new HashSet<Reply>();// 该帖子所有回复

	public BuyInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getBid() {
		return bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public Double getbContent() {
		return bContent;
	}

	public void setbContent(Double bContent) {
		this.bContent = bContent;
	}

	public Date getPubTimes() {
		return pubTimes;
	}

	public void setPubTimes(Date pubTimes) {
		this.pubTimes = pubTimes;
	}

	public Date getLastTimes() {
		return lastTimes;
	}

	public void setLastTimes(Date lastTimes) {
		this.lastTimes = lastTimes;
	}

	public Integer getbViews() {
		return bViews;
	}

	public void setbViews(Integer bViews) {
		this.bViews = bViews;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Set<Reply> getReplys() {
		return replys;
	}

	public void setReplys(Set<Reply> replys) {
		this.replys = replys;
	}

	@Override
	public String toString() {
		return "BuyInfo [bid=" + bid + ", bTitle=" + bTitle + ", bContent=" + bContent + ", pubTimes=" + pubTimes
				+ ", lastTimes=" + lastTimes + ", bViews=" + bViews + ", user=" + user + "]";
	}

}
