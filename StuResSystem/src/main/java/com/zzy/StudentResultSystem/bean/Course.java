package com.zzy.StudentResultSystem.bean;
/**
 * @ClassName Admin
 * @Author ZZY
 **/

public class Course {
    private String courseId;
    private String teacherId;
    private String courseName;
    private String courseTerm;

    public Course() {
    }

    public Course(String courseId, String teacherId, String courseName, String courseTerm) {
        this.courseId = courseId;
        this.teacherId = teacherId;
        this.courseName = courseName;
        this.courseTerm = courseTerm;
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public String getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(String teacherId) {
        this.teacherId = teacherId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCourseTerm() {
        return courseTerm;
    }

    public void setCourseTerm(String courseTerm) {
        this.courseTerm = courseTerm;
    }
}
