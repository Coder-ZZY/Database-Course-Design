package com.zzy.StudentResultSystem.service;

import com.zzy.StudentResultSystem.bean.Teacher;

import java.util.List;

/**
 * @ClassName TeacherService
 * @Author ZZY
 **/
public interface TeacherService {

    Teacher login(String teaId, String teaPass);

    List<Teacher> getAllTeacher();

    int addTeacher(Teacher teacher);

    int addTeacherHavePass(Teacher teacher);

    Teacher selectById(String teaId);

    int deleTea(String teaId);
}
