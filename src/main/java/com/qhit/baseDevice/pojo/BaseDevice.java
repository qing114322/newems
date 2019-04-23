package com.qhit.baseDevice.pojo;


import com.qhit.baseCompany.pojo.BaseCompany;
import com.qhit.baseDevtype.pojo.BaseDevtype;

/**
* Created by GeneratorCode on 2019/04/08
*/ 

public class BaseDevice { 
    private Integer devid;    //主键 
    private String devname;    //设备名称 
    private Integer typeid;    //设备类别 
    private String devdate;    //投入时间 
    private String devuser;    //责任人 
    private Integer compid;    //所属企业
    private BaseCompany baseCompany; //企业信息
    private BaseDevtype baseDevtype;//设备类别

    private String dljname;
    private String zcjname;
    private String pdjname;

    public String getDljname() {
        return dljname;
    }

    public void setDljname(String dljname) {
        this.dljname = dljname;
    }

    public String getZcjname() {
        return zcjname;
    }

    public void setZcjname(String zcjname) {
        this.zcjname = zcjname;
    }

    public String getPdjname() {
        return pdjname;
    }

    public void setPdjname(String pdjname) {
        this.pdjname = pdjname;
    }

    public BaseCompany getBaseCompany() {
        return baseCompany;
    }

    public void setBaseCompany(BaseCompany baseCompany) {
        this.baseCompany = baseCompany;
    }

    public BaseDevtype getBaseDevtype() {
        return baseDevtype;
    }

    public void setBaseDevtype(BaseDevtype baseDevtype) {
        this.baseDevtype = baseDevtype;
    }

    public Integer getDevid() {
        return devid;
    }

    public void setDevid(Integer devid) { 
        this.devid = devid;
    } 

    public String getDevname() { 
        return devname;
    }

    public void setDevname(String devname) { 
        this.devname = devname;
    }
    public Integer getTypeid() { 
        return typeid;
    }

    public void setTypeid(Integer typeid) { 
        this.typeid = typeid;
    } 

    public String getDevdate() { 
        return devdate;
    }

    public void setDevdate(String devdate) { 
        this.devdate = devdate;
    }
    public String getDevuser() { 
        return devuser;
    }

    public void setDevuser(String devuser) { 
        this.devuser = devuser;
    }
    public Integer getCompid() { 
        return compid;
    }

    public void setCompid(Integer compid) { 
        this.compid = compid;
    } 


 }