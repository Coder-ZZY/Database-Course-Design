package com.zzy.StudentResultSystem.mapper;

import com.zzy.StudentResultSystem.bean.Rank;
import com.zzy.StudentResultSystem.bean.Takes;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

/**
 * @ClassName TakesMapper
 * @Author ZZY
 **/
@Mapper
public interface TakesMapper {

    @Select("select * from takes where  stu_id=#{stuId}")
    List<Takes> selectResultByStuId(String stuId);

    @Select("select * from takes")
    List<Takes> selectAllResult();

    @Select("select * from takes where stu_id=#{stuId} And res_term=#{resTerm}")
    List<Takes> selectResultByStuIdAndTerm(@Param("stuId") String stuId, @Param("resTerm") String resTerm);

    @Insert("insert into takes (stu_id,course_id,grade)values(#{stuId},#{courseId},#{grade})")
    int insertResult(Takes takes);

    @Insert("update takes set course_id = #{courseId},grade = #{grade},stu_id = #{stuId} where takes_id = #{takesId}")
    int updateResult(Takes takes);

    @Delete("DELETE from takes where takes_id=#{resId}")
    int deleteResultById(int resId);

    @Select("select * from takes where stu_id=#{stuId} And course_id=#{subName}")
    Takes selectResultByStuIdAndSubName(@Param("stuId")String stuId, @Param("subName")String subName );

    @Select("select * from takes where takes_id=#{resId}")
    Takes selectResultByResId(int resId);



    @Select("SELECT\n" +
            "\t@rownum := @rownum + 1 AS rownum,\n" +
            "\tstu_id,\n" +
            "\tstu_allres,\n" +
            "\tres_term\n" +
            "FROM\n" +
            "\t( SELECT @rownum := 0 ) r,\n" +
            "\t(\n" +
            "SELECT\n" +
            "\ttakes.stu_id,\n" +
            "\tcourse.course_term AS res_term,\n" +
            "\tsum( takes.grade ) AS 'stu_allres' \n" +
            "FROM\n" +
            "\ttakes\n" +
            "\tleft join course\n" +
            "on\n" +
            "\ttakes.course_id=course.course_id where course.course_term = #{resTerm} GROUP BY takes.stu_id ORDER BY sum(takes.grade) DESC) w")
    List<Rank> selectRankByTerm(String resTerm);


    @Select("select course_name as sub_name,grade as res_num from takes left join course on takes.course_id=course.course_id where takes.stu_id=#{stuId} and course.course_term=#{resTerm}")
    List<Map<String,Integer>> selectResultMap(@Param("stuId") String stuId,@Param("resTerm") String resTerm);

    @Select({"<script>",
            "SELECT\n" +
                    "\t@rownum := @rownum + 1 AS rownum,\n" +
                    "\tstu_id,\n" +
                    "\tstu_allres,\n" +
                    "\tres_term\n" +
                    "FROM\n" +
                    "\t( SELECT @rownum := 0 ) r,\n" +
                    "\t(\n" +
                    "SELECT\n" +
                    "\ttakes.stu_id,\n" +
                    "\tcourse.course_term AS res_term,\n" +
                    "\tsum( takes.grade ) AS 'stu_allres' \n" +
                    "FROM\n" +
                    "\ttakes\n" +
                    "\tleft join course\n" +
                    "on\n" +
                    "\ttakes.course_id=course.course_id where course.course_term = #{resTerm} and stu_id in",
            "<foreach collection='stuId' item='stuId' open='(' separator=',' close=')'>",
            "#{stuId}",
            "</foreach>",
            "GROUP BY stu_id ORDER BY sum(takes.grade) DESC) w",
            "</script>"})
    List<Rank> selectRankByTermAndStuId(@Param("stuId") List<String> stuId,@Param("resTerm") String resTerm);
}
