package com.zzy.StudentResultSystem.mapper;

import com.zzy.StudentResultSystem.bean.Course;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @ClassName ClassMapper
 * @Author ZZY
 **/
@Mapper
public interface CourseMapper {

    @Select("select * from course where course_id = #{courseId}")
    Course selectClassById(String courseId);


    @Select("select * from course")
    List<Course> selectAll();
}
