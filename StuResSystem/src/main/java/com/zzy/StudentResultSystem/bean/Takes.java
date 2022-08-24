package com.zzy.StudentResultSystem.bean;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

/**
 * @ClassName Takes
 * @Author ZZY
 **/
public class Takes {
    private int takesId;
    private String stuId;
    private Student stu;
    private String courseId;
    private Course cou;

    @Max(value = 100,message = "成绩最大值不能超过100")
    @Min(value = 0,message = "成绩最小值不能小于0")
    private int    grade;
    public Takes() {
    }

    public Takes(int takesId, String stuId, String courseId, int grade) {
        this.takesId = takesId;
        this.stuId = stuId;
        this.courseId = courseId;
        this.grade = grade;
    }

    /**
     * 获取
     * @return takesId
     */
    public int getTakesId() {
        return takesId;
    }

    /**
     * 设置
     * @param takesId
     */
    public void setTakesId(int takesId) {
        this.takesId = takesId;
    }

    /**
     * 获取
     * @return stuId
     */
    public String getStuId() {
        return stuId;
    }

    /**
     * 设置
     * @param stuId
     */
    public void setStuId(String stuId) {
        this.stuId = stuId;
    }

    /**
     * 获取
     * @return courseId
     */
    public String getCourseId() {
        return courseId;
    }

    /**
     * 设置
     * @param courseId
     */
    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    /**
     * 获取
     * @return grade
     */
    public int getGrade() {
        return grade;
    }

    /**
     * 设置
     * @param grade
     */
    public void setGrade(int grade) {
        this.grade = grade;
    }

    public Student getStu() {
        return stu;
    }

    public void setStu(Student stu) {
        this.stu = stu;
    }

    public Course getCou() {
        return cou;
    }

    public void setCou(Course cou) {
        this.cou = cou;
    }

    public String toString() {
        return "Takes{takesId = " + takesId + ", stuId = " + stuId + ", courseId = " + courseId + ", grade = " + grade + "}";
    }
}
