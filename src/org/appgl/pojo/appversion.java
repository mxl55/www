package org.appgl.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class appversion {
    private Integer id;

    private Integer appid;

    private String versionno;

    private String versioninfo;

    private Integer publishstatus;

    private String downloadlink;

    private BigDecimal versionsize;

    private String apklocpath;

    private String apkfilename;

    private Integer createdby;

    private Date creationdate;

    private Integer modifyby;

    private Date modifydate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAppid() {
        return appid;
    }

    public void setAppid(Integer appid) {
        this.appid = appid;
    }

    public String getVersionno() {
        return versionno;
    }

    public void setVersionno(String versionno) {
        this.versionno = versionno;
    }

    public String getVersioninfo() {
        return versioninfo;
    }

    public void setVersioninfo(String versioninfo) {
        this.versioninfo = versioninfo;
    }

    public Integer getPublishstatus() {
        return publishstatus;
    }

    public void setPublishstatus(Integer publishstatus) {
        this.publishstatus = publishstatus;
    }

    public String getDownloadlink() {
        return downloadlink;
    }

    public void setDownloadlink(String downloadlink) {
        this.downloadlink = downloadlink;
    }

    public BigDecimal getVersionsize() {
        return versionsize;
    }

    public void setVersionsize(BigDecimal versionsize) {
        this.versionsize = versionsize;
    }

    public String getApklocpath() {
        return apklocpath;
    }

    public void setApklocpath(String apklocpath) {
        this.apklocpath = apklocpath;
    }

    public String getApkfilename() {
        return apkfilename;
    }

    public void setApkfilename(String apkfilename) {
        this.apkfilename = apkfilename;
    }

    public Integer getCreatedby() {
        return createdby;
    }

    public void setCreatedby(Integer createdby) {
        this.createdby = createdby;
    }

    public Date getCreationdate() {
        return creationdate;
    }

    public void setCreationdate(Date creationdate) {
        this.creationdate = creationdate;
    }

    public Integer getModifyby() {
        return modifyby;
    }

    public void setModifyby(Integer modifyby) {
        this.modifyby = modifyby;
    }

    public Date getModifydate() {
        return modifydate;
    }

    public void setModifydate(Date modifydate) {
        this.modifydate = modifydate;
    }

	@Override
	public String toString() {
		return "appversion [id=" + id + ", appid=" + appid + ", versionno=" + versionno + ", versioninfo=" + versioninfo
				+ ", publishstatus=" + publishstatus + ", downloadlink=" + downloadlink + ", versionsize=" + versionsize
				+ ", apklocpath=" + apklocpath + ", apkfilename=" + apkfilename + ", createdby=" + createdby
				+ ", creationdate=" + creationdate + ", modifyby=" + modifyby + ", modifydate=" + modifydate + "]";
	}
    
    
}