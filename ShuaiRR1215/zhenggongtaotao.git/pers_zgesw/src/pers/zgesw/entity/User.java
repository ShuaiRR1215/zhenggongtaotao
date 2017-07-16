package pers.zgesw.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * @author Administrator
 * @E_Mail 1225803134@qq.com
 * @date 2017年7月12日 下午3:51:51
 * @description 用户模块实体类
 */
public class User {

	private Integer uid;// 用户id，唯一主键自增长
	private String username;// 用户名
	private String password;// 密码
	private String salt;// 辅助salt
	private String realName;// 真实姓名
	private Integer sex;// 性别0 男 1 女
	private Date birthday;// 出生日期
	private String phone;// 手机号
	private String qq;// qq
	private String weixin;// 微信
	private String idCard;// 身份证号码
	private String email;// 电子邮箱
	private Date regDate;// 注册时间
	private Integer state;// 是否激活0为未激活1为激活
	private String code;// 激活码
	private Integer verified;// 是否实名认证
	private String faceUrl;// 头像存储路径
	private String safequestion;// 用户安全问题
	private String safeanswer;// 用户安全问题答案

	private Set<SellInfo> sellInfos = new HashSet<SellInfo>();
	private Set<BuyInfo> buyInfos = new HashSet<BuyInfo>();

	public User() {
		super();
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
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

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getWeixin() {
		return weixin;
	}

	public void setWeixin(String weixin) {
		this.weixin = weixin;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Integer getVerified() {
		return verified;
	}

	public void setVerified(Integer verified) {
		this.verified = verified;
	}

	public String getFaceUrl() {
		return faceUrl;
	}

	public void setFaceUrl(String faceUrl) {
		this.faceUrl = faceUrl;
	}

	public String getSafequestion() {
		return safequestion;
	}

	public void setSafequestion(String safequestion) {
		this.safequestion = safequestion;
	}

	public String getSafeanswer() {
		return safeanswer;
	}

	public void setSafeanswer(String safeanswer) {
		this.safeanswer = safeanswer;
	}

	public Set<SellInfo> getSellInfos() {
		return sellInfos;
	}

	public void setSellInfos(Set<SellInfo> sellInfos) {
		this.sellInfos = sellInfos;
	}

	public Set<BuyInfo> getBuyInfos() {
		return buyInfos;
	}

	public void setBuyInfos(Set<BuyInfo> buyInfos) {
		this.buyInfos = buyInfos;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password=" + password + ", salt=" + salt
				+ ", realName=" + realName + ", sex=" + sex + ", birthday=" + birthday + ", phone=" + phone + ", qq="
				+ qq + ", weixin=" + weixin + ", idCard=" + idCard + ", email=" + email + ", regDate=" + regDate
				+ ", state=" + state + ", code=" + code + ", verified=" + verified + ", faceUrl=" + faceUrl
				+ ", safequestion=" + safequestion + ", safeanswer=" + safeanswer + "]";
	}

}
