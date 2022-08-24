package com.zzy.StudentResultSystem.service;

import com.zzy.StudentResultSystem.bean.Student;

import java.util.List;

/**
 * @ClassName StudentService
 * @Author ZZY
 **/
public interface StudentService {
     Student login(String stuId,String stuPass);

     List<Student> getAllStudent();

     int addStudent(Student student);

     int addStudentHavePass(Student student);

     Student selectById(String stuId);

     int deleStu(String stuId);

     List<Student> seleStuByClassName(String stuClass);
}
