package org.appgl.pojo;

import java.io.Serializable;

public class devuser implements Serializable {
	
	private Integer devid;
	
	private String devcode;
	
	private String devname;
	
	private String devpassword;
	
	private String devemail;
	
	private String devinfo;
	
	private String createdby;
	
	private String creationdate;
	
	private String modifby;
	
	private String modifydate;

	public Integer getDevid() {
		return devid;
	}

	public void setDevid(Integer devid) {
		this.devid = devid;
	}

	public String getDevcode() {
		return devcode;
	}

	public void setDevcode(String devcode) {
		this.devcode = devcode;
	}

	public String getDevname() {
		return devname;
	}

	public void setDevname(String devname) {
		this.devname = devname;
	}

	public String getDevpassword() {
		return devpassword;
	}

	public void setDevpassword(String devpassword) {
		this.devpassword = devpassword;
	}

	public String getDevemail() {
		return devemail;
	}

	public void setDevemail(String devemail) {
		this.devemail = devemail;
	}

	public String getDevinfo() {
		return devinfo;
	}

	public void setDevinfo(String devinfo) {
		this.devinfo = devinfo;
	}

	public String getCreatedby() {
		return createdby;
	}

	public void setCreatedby(String createdby) {
		this.createdby = createdby;
	}

	public String getCreationdate() {
		return creationdate;
	}

	public void setCreationdate(String creationdate) {
		this.creationdate = creationdate;
	}

	public String getModifby() {
		return modifby;
	}

	public void setModifby(String modifby) {
		this.modifby = modifby;
	}

	public String getModifydate() {
		return modifydate;
	}

	public void setModifydate(String modifydate) {
		this.modifydate = modifydate;
	}

	@Override
	public String toString() {
		return "devuser [devid=" + devid + ", devcode=" + devcode + ", devname=" + devname + ", devpassword="
				+ devpassword + ", devemail=" + devemail + ", devinfo=" + devinfo + ", createdby=" + createdby
				+ ", creationdate=" + creationdate + ", modifby=" + modifby + ", modifydate=" + modifydate + "]";
	}
	
	

}
