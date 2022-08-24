package com.zzy.StudentResultSystem.bean;

import javax.validation.constraints.Size;

/**
 * @ClassName Teacher
 * @Author ZZY
 **/
public class Teacher {
    @Size(min=12,max = 12,message = "教师ID长度必须为12")
    private String teaId;
    @Size(min=1,max = 10,message = "名字长度必须在1-10之间")
    private String teaName;
    private String teaPass;
    private String teaSex;
    @Size(min = 11,max = 11,message = "请输入11位手机号码")
    private String teaTel;

    public Teacher() {
    }

    public Teacher(String teaId, String teaName, String teaPass, String teaSex, String teaTel) {
        this.teaId = teaId;
        this.teaName = teaName;
        this.teaPass = teaPass;
        this.teaSex = teaSex;
        this.teaTel = teaTel;
    }

    public String getTeaId() {
        return teaId;
    }

    public void setTeaId(String teaId) {
        this.teaId = teaId;
    }

    public String getTeaName() {
        return teaName;
    }

    public void setTeaName(String teaName) {
        this.teaName = teaName;
    }

    public String getTeaPass() {
        return teaPass;
    }

    public void setTeaPass(String teaPass) {
        this.teaPass = teaPass;
    }

    public String getTeaSex() {
        return teaSex;
    }

    public void setTeaSex(String teaSex) {
        this.teaSex = teaSex;
    }

    public String getTeaTel() {
        return teaTel;
    }

    public void setTeaTel(String teaTel) {
        this.teaTel = teaTel;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "teaId='" + teaId + '\'' +
                ", teaName='" + teaName + '\'' +
                ", teaPass='" + teaPass + '\'' +
                ", teaSex='" + teaSex + '\'' +
                ", teaTel='" + teaTel + '\'' +
                '}';
    }
}
