package pers.zgesw.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class SellInfo {

	private Integer sid;// id主键
	private String sTitle;// 标题
	private Double sPrice;// 出售价格
	private Double sBuyPrice;// 原价格
	private String sLink;// 购买链接
	private String newDegree;// 新旧程度
	private String sdesc;// 描述
	private Date pubDate;// 发布日期
	private Integer sViews;// 浏览数

	private User user;// 信息所属人
	private CategorySecond categorySecond;// 信息所属二级分类
	private Set<Comment> comments = new HashSet<Comment>();// 信息对应的评论集合
	private Set<ImgInfo> imgInfos = new HashSet<ImgInfo>();// 信息对应的图片集合

	public SellInfo() {
		super();
	}

	public Integer getSid() {
		return sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public String getsTitle() {
		return sTitle;
	}

	public void setsTitle(String sTitle) {
		this.sTitle = sTitle;
	}

	public Double getsPrice() {
		return sPrice;
	}

	public void setsPrice(Double sPrice) {
		this.sPrice = sPrice;
	}

	public Double getsBuyPrice() {
		return sBuyPrice;
	}

	public void setsBuyPrice(Double sBuyPrice) {
		this.sBuyPrice = sBuyPrice;
	}

	public String getsLink() {
		return sLink;
	}

	public void setsLink(String sLink) {
		this.sLink = sLink;
	}

	

	public String getNewDegree() {
		return newDegree;
	}

	public void setNewDegree(String newDegree) {
		this.newDegree = newDegree;
	}

	public String getSdesc() {
		return sdesc;
	}

	public void setSdesc(String sdesc) {
		this.sdesc = sdesc;
	}

	public Date getPubDate() {
		return pubDate;
	}

	public void setPubDate(Date pubDate) {
		this.pubDate = pubDate;
	}

	public Integer getsViews() {
		return sViews;
	}

	public void setsViews(Integer sViews) {
		this.sViews = sViews;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public CategorySecond getCategorySecond() {
		return categorySecond;
	}

	public void setCategorySecond(CategorySecond categorySecond) {
		this.categorySecond = categorySecond;
	}

	public Set<Comment> getComments() {
		return comments;
	}

	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}

	public Set<ImgInfo> getImgInfos() {
		return imgInfos;
	}

	public void setImgInfos(Set<ImgInfo> imgInfos) {
		this.imgInfos = imgInfos;
	}

	@Override
	public String toString() {
		return "SellInfo [sid=" + sid + ", sTitle=" + sTitle + ", sPrice=" + sPrice + ", sBuyPrice=" + sBuyPrice
				+ ", sLink=" + sLink + ", newDegree=" + newDegree + ", sdesc=" + sdesc + ", pubDate=" + pubDate
				+ ", sViews=" + sViews + ", user=" + user + ", categorySecond=" + categorySecond + "]";
	}

}
