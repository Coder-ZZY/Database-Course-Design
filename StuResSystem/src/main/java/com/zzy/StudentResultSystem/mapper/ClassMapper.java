package com.zzy.StudentResultSystem.mapper;

import com.zzy.StudentResultSystem.bean.Classes;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @ClassName ClassMapper
 * @Author ZZY
 **/
@Mapper
public interface ClassMapper {

    @Select("select * from class")
    List<Classes> selectAllClass();

    @Select("select * from class where class_id=#{classId}")
    Classes selectClassById(String classId);


    @Delete("DELETE from class where class_id=#{classId}")
    int delectClassById(String classId);

    @Insert("insert into class values(#{classId},#{className})")
    int insertClass(Classes clas);
    @Update("update class set class_id = #{classId}, class_name = #{className})")

    @Select("select * from class where class_name=#{className}")
    Classes selectClassByName(String className);
}
