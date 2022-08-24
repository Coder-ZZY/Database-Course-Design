package com.zzy.StudentResultSystem.bean;


import javax.validation.constraints.Size;

/**
 * @ClassName Student
 * @Author ZZY
 **/

public class Student {

    @Size(min=12,max = 12,message = "学号长度必须为12")
    private String stuId;
    @Size(min=1,max = 10,message = "名字长度必须在1-10之间")
    private String stuName;
    private String stuPass;
    private String stuClassId;
    private String stuSex;
    @Size(min = 11,max = 11,message = "请输入11位手机号码")
    private String stuTel;

    public Student() {
    }

    public Student(String stuId, String stuName, String stuPass, String stuClassId, String stuSex, String stuTel) {
        this.stuId = stuId;
        this.stuName = stuName;
        this.stuPass = stuPass;
        this.stuClassId = stuClassId;
        this.stuSex = stuSex;
        this.stuTel = stuTel;
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getStuPass() {
        return stuPass;
    }

    public void setStuPass(String stuPass) {
        this.stuPass = stuPass;
    }

    public String getStuClass() {
        return stuClassId;
    }

    public void setStuClass(String stuClassId) {
        this.stuClassId = stuClassId;
    }

    public String getStuSex() {
        return stuSex;
    }

    public void setStuSex(String stuSex) {
        this.stuSex = stuSex;
    }

    public String getStuTel() {
        return stuTel;
    }

    public void setStuTel(String stuTel) {
        this.stuTel = stuTel;
    }

    @Override
    public String toString() {
        return "Student{" +
                "stuId='" + stuId + '\'' +
                ", stuName='" + stuName + '\'' +
                ", stuPass='" + stuPass + '\'' +
                ", stuClass='" + stuClassId + '\'' +
                ", stuSex='" + stuSex + '\'' +
                ", stuTel='" + stuTel + '\'' +
                '}';
    }
}
