package com.zzy.StudentResultSystem.mapper;

import com.zzy.StudentResultSystem.bean.Teacher;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @ClassName TeacherMapper
 * @Author ZZY
 **/
@Mapper
public interface TeacherMapper {

    @Select("select * from teacher where  tea_id=#{teaId} and tea_pass=#{teaPass}")
    Teacher selectTeacherByIdAndPass(@Param("teaId") String teaId, @Param("teaPass") String teaPass);

    @Select("select * from teacher")
    List<Teacher> selectAllTeacher();

    @Insert("insert into teacher (tea_id,tea_name,tea_sex,tea_tel) values(#{teaId},#{teaName},#{teaSex},#{teaTel})")
    int insertTeacher(Teacher tea);

    @Insert("update teacher set tea_name=#{teaName},tea_pass=#{teaPass},tea_sex=#{teaSex},tea_tel=#{teaTel} where tea_id=#{teaId}")
    int insertTeacherHavaPass(Teacher tea);

    @Select("select * from teacher where  tea_id=#{teaId} ")
    Teacher selectTeacherByStuId(String teaId);

    @Delete("DELETE from teacher where tea_id=#{teaId}")
    int deleteTeaById(String teaId);
}
