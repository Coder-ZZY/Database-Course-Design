package com.zzy.StudentResultSystem.service;

import com.zzy.StudentResultSystem.bean.Classes;

import java.util.List;

/**
 * @ClassName ClassService
 * @Author ZZY
 **/
public interface ClassService {

    List<Classes> getAllClass();

    Classes selectById(String classId);

    Classes selectByName(String className);

    int deleteById(String classId);

    int addClass(Classes classes);


}
