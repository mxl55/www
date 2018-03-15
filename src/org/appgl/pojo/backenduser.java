package org.appgl.pojo;

import java.io.Serializable;

public class backenduser implements Serializable {
	
	private Integer backid;
	
	private String usercode;
	
	private String username;
	
	private Integer usertype;
	
	private Integer createdby;
	
	private String creationdate;
	
	private Integer modifyby;
	
	private String modifydate;
	
	private String userpassword;

	public Integer getBackid() {
		return backid;
	}

	public void setBackid(Integer backid) {
		this.backid = backid;
	}

	public String getUsercode() {
		return usercode;
	}

	public void setUsercode(String usercode) {
		this.usercode = usercode;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getUsertype() {
		return usertype;
	}

	public void setUsertype(Integer usertype) {
		this.usertype = usertype;
	}

	public Integer getCreatedby() {
		return createdby;
	}

	public void setCreatedby(Integer createdby) {
		this.createdby = createdby;
	}

	public String getCreationdate() {
		return creationdate;
	}

	public void setCreationdate(String creationdate) {
		this.creationdate = creationdate;
	}

	public Integer getModifyby() {
		return modifyby;
	}

	public void setModifyby(Integer modifyby) {
		this.modifyby = modifyby;
	}

	public String getModifydate() {
		return modifydate;
	}

	public void setModifydate(String modifydate) {
		this.modifydate = modifydate;
	}

	public String getUserpassword() {
		return userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

	@Override
	public String toString() {
		return "backenduser [backid=" + backid + ", usercode=" + usercode + ", username=" + username + ", usertype="
				+ usertype + ", createdby=" + createdby + ", creationdate=" + creationdate + ", modifyby=" + modifyby
				+ ", modifydate=" + modifydate + ", userpassword=" + userpassword + "]";
	}
	
	

}
