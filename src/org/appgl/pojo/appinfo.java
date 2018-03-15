package org.appgl.pojo;

public class appinfo {
    private Integer id;

    private String softwarename;

    private String apkname;

    private String supportrom;

    private String interfacelanguage;

    private Double softwaresize;

    private String updatedate;

    private devuser devid;

    private String appinfo;

    private datadictionary status;

    private String onsaledate;

    private String offsaledate;

    private datadictionary flatformid;

    private appcategory categoryleve13;

    private Integer downloads;

    private appcategory categoryleve11;

    private appcategory categoryleve12;

    private String logopicpath;

    private String logolocpath;

    private appversion versionid;

    private Integer createdby;

    private String creationdate;

    private Integer modifyby;

    private String modifydate;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSoftwarename() {
		return softwarename;
	}

	public void setSoftwarename(String softwarename) {
		this.softwarename = softwarename;
	}

	public String getApkname() {
		return apkname;
	}

	public void setApkname(String apkname) {
		this.apkname = apkname;
	}

	public String getSupportrom() {
		return supportrom;
	}

	public void setSupportrom(String supportrom) {
		this.supportrom = supportrom;
	}

	public String getInterfacelanguage() {
		return interfacelanguage;
	}

	public void setInterfacelanguage(String interfacelanguage) {
		this.interfacelanguage = interfacelanguage;
	}

	public Double getSoftwaresize() {
		return softwaresize;
	}

	public void setSoftwaresize(Double softwaresize) {
		this.softwaresize = softwaresize;
	}

	public String getUpdatedate() {
		return updatedate;
	}

	public void setUpdatedate(String updatedate) {
		this.updatedate = updatedate;
	}

	

	public String getAppinfo() {
		return appinfo;
	}

	public void setAppinfo(String appinfo) {
		this.appinfo = appinfo;
	}

	

	public String getOnsaledate() {
		return onsaledate;
	}

	public void setOnsaledate(String onsaledate) {
		this.onsaledate = onsaledate;
	}

	public String getOffsaledate() {
		return offsaledate;
	}

	public void setOffsaledate(String offsaledate) {
		this.offsaledate = offsaledate;
	}

	

	

	public Integer getDownloads() {
		return downloads;
	}

	public void setDownloads(Integer downloads) {
		this.downloads = downloads;
	}

	

	public appcategory getCategoryleve13() {
		return categoryleve13;
	}

	public void setCategoryleve13(appcategory categoryleve13) {
		this.categoryleve13 = categoryleve13;
	}

	public appcategory getCategoryleve11() {
		return categoryleve11;
	}

	public void setCategoryleve11(appcategory categoryleve11) {
		this.categoryleve11 = categoryleve11;
	}

	public appcategory getCategoryleve12() {
		return categoryleve12;
	}

	public void setCategoryleve12(appcategory categoryleve12) {
		this.categoryleve12 = categoryleve12;
	}

	public String getLogopicpath() {
		return logopicpath;
	}

	public void setLogopicpath(String logopicpath) {
		this.logopicpath = logopicpath;
	}

	public String getLogolocpath() {
		return logolocpath;
	}

	public void setLogolocpath(String logolocpath) {
		this.logolocpath = logolocpath;
	}

	

	public devuser getDevid() {
		return devid;
	}

	public void setDevid(devuser devid) {
		this.devid = devid;
	}

	public datadictionary getStatus() {
		return status;
	}

	public void setStatus(datadictionary status) {
		this.status = status;
	}

	public datadictionary getFlatformid() {
		return flatformid;
	}

	public void setFlatformid(datadictionary flatformid) {
		this.flatformid = flatformid;
	}

	public appversion getVersionid() {
		return versionid;
	}

	public void setVersionid(appversion versionid) {
		this.versionid = versionid;
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

	@Override
	public String toString() {
		return "app_info [id=" + id + ", softwarename=" + softwarename + ", apkname=" + apkname + ", supportrom="
				+ supportrom + ", interfacelanguage=" + interfacelanguage + ", softwaresize=" + softwaresize
				+ ", updatedate=" + updatedate + ", devid=" + devid + ", appinfo=" + appinfo + ", status=" + status
				+ ", onsaledate=" + onsaledate + ", offsaledate=" + offsaledate + ", flatformid=" + flatformid
				+ ", categoryleve13=" + categoryleve13 + ", downloads=" + downloads + ", categoryleve11="
				+ categoryleve11 + ", categoryleve12=" + categoryleve12 + ", logopicpath=" + logopicpath
				+ ", logolocpath=" + logolocpath + ", versionid=" + versionid + ", createdby=" + createdby
				+ ", creationdate=" + creationdate + ", modifyby=" + modifyby + ", modifydate=" + modifydate + "]";
	}
    
    

}