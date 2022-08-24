package com.zzy.StudentResultSystem.service;

import com.zzy.StudentResultSystem.bean.Admin;

/**
 * @ClassName AdminService
 * @Author ZZY
 **/
public interface AdminService  {

    Admin adminLogin(String AdminId,String AdminPass);
}
