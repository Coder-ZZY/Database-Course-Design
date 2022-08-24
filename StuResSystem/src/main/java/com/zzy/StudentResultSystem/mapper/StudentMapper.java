package com.zzy.StudentResultSystem.mapper;

import com.zzy.StudentResultSystem.bean.Student;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @ClassName StudentMapper
 * @Author ZZY
 **/

@Mapper
public interface StudentMapper {

    @Select("select * from student where  stu_id=#{stuId} and stu_pass=#{stuPass}")
    Student selectStudentByIdAndPass(@Param("stuId") String stuId, @Param("stuPass") String stuPass);

    @Select("select * from stu_class")
    List<Student> selectAllStudent();

    @Insert("insert into student (stu_id,stu_name,stu_class_id,stu_sex,stu_tel) values" +
            "(#{stuId},#{stuName},#{stuClassId},#{stuSex},#{stuTel})")
     int insertStudent(Student stu);

    @Insert("update student set stu_name =#{stuName} ,stu_pass = #{stuPass},stu_class_id = #{stuClassId},stu_sex = #{stuSex},stu_tel = #{stuTel} where stu_id = #{stuId}")
    int insertStudentHavaPass(Student stu);

    @Select("select * from student where  stu_id like concat('%',#{stuId},'%')")
    Student selectStudentByStuId(String stuId);

    @Delete("DELETE from student where stu_id=#{stuId}")
    int deleteStuById(String StuId);

    @Select(value = "SELECT * from student where stu_class_id=#{stuClass}")
    List<Student> selectStuByStuclass(String stuClass);

    @Select("select stu_name from student where stu_id=#{stuId} ")
    String selectNameById(String stuId);

    @Select("select stu_id from student left join class on student.stu_class_id = class_id where class.class_name=#{stuClass}")
    List<String> selectIdByClass(String stuClass);
}
