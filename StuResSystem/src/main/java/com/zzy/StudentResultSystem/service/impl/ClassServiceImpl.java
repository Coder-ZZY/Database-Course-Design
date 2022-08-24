package com.zzy.StudentResultSystem.service.impl;

import com.zzy.StudentResultSystem.bean.Classes;
import com.zzy.StudentResultSystem.mapper.ClassMapper;
import com.zzy.StudentResultSystem.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ClassName ClassServiceImpl
 * @Author ZZY
 **/
@Service
public class ClassServiceImpl implements ClassService {


    @Autowired
    private ClassMapper classMapper;

    @Override
    public List<Classes> getAllClass() {
        return classMapper.selectAllClass();
    }

    @Override
    public Classes selectById(String classId) {
        return classMapper.selectClassById(classId);
    }

    @Override
    public int deleteById(String classId) {
        return classMapper.delectClassById(classId);
    }

    @Override
    public int addClass(Classes classes) {
        return classMapper.insertClass(classes);
    }

    @Override
    public Classes selectByName(String className) {
        return classMapper.selectClassByName(className);
    }
}
