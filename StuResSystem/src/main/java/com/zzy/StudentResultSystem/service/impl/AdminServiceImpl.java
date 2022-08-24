package com.zzy.StudentResultSystem.service.impl;

import com.zzy.StudentResultSystem.bean.Admin;
import com.zzy.StudentResultSystem.mapper.AdminMapper;
import com.zzy.StudentResultSystem.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName AdminServiceImpl
 * @Author ZZY
 **/
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin adminLogin(String AdminId, String AdminPass)
    {
        return adminMapper.selectAdminByIdAndPass(AdminId,AdminPass);
    }
}
