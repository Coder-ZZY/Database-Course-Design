package com.zzy.StudentResultSystem.mapper;

import com.zzy.StudentResultSystem.bean.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * @ClassName AdminMapper
 * @Author ZZY
 **/

@Mapper
public interface AdminMapper {

    @Select("select * from admin where  admin_id=#{adminId} and admin_pass=#{adminPass}")
    Admin selectAdminByIdAndPass(@Param("adminId") String adminId, @Param("adminPass") String adminPass);

}
