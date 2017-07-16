package pers.zgesw.entity;

import java.util.Date;

/**
 * 对应sellinfo
 * 
 * @author shuai
 *
 */

public class Comment {
	private Integer cid;// 评论id
	private String content;// 评论内容
	private User user;// 评论人
	private Date cTimes;// 评论时间
	private SellInfo sellInfo;// 该评论所属的对象

	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Date getcTimes() {
		return cTimes;
	}

	public void setcTimes(Date cTimes) {
		this.cTimes = cTimes;
	}

	public SellInfo getSellInfo() {
		return sellInfo;
	}

	public void setSellInfo(SellInfo sellInfo) {
		this.sellInfo = sellInfo;
	}

	@Override
	public String toString() {
		return "Comment [cid=" + cid + ", content=" + content + ", user=" + user + ", cTimes=" + cTimes + ", sellInfo="
				+ sellInfo + "]";
	}

}
