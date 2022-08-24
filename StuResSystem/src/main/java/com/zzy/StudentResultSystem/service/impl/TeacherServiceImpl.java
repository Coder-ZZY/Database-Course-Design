package com.zzy.StudentResultSystem.service.impl;

import com.zzy.StudentResultSystem.bean.Teacher;
import com.zzy.StudentResultSystem.mapper.TeacherMapper;
import com.zzy.StudentResultSystem.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName TeacherServiceImpl
 * @Author ZZY
 **/

@Service
public class TeacherServiceImpl  implements TeacherService {

    @Autowired
    private TeacherMapper teacherMapper;

    @Override
    public Teacher login(String teaId, String teaPass) {
        return teacherMapper.selectTeacherByIdAndPass(teaId,teaPass);
    }

    @Override
    public List<Teacher> getAllTeacher() {
        return teacherMapper.selectAllTeacher();
    }

    @Override
    public int addTeacher(Teacher teacher) {
        return teacherMapper.insertTeacher(teacher);
    }

    @Override
    public int addTeacherHavePass(Teacher teacher) {
        return teacherMapper.insertTeacherHavaPass(teacher);
    }

    @Override
    public Teacher selectById(String teaId) {
        return teacherMapper.selectTeacherByStuId(teaId);
    }

    @Override
    public int deleTea(String teaId) {
        return teacherMapper.deleteTeaById(teaId);
    }

}
