package com.zzy.StudentResultSystem.bean;

import javax.validation.constraints.Size;

/**
 * @ClassName Classes
 * @Author ZZY
 **/
public class Classes {

    @Size(min=6,max = 6,message = "班级号长度必须为6")
    private String classId;
    private String className;

    public Classes() {
    }

    public Classes(String classId, String className) {
        this.classId = classId;
        this.className = className;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    @Override
    public String toString() {
        return "Classes{" +
                "classId='" + classId + '\'' +
                ", className='" + className + '\'' +
                '}';
    }
}
