package com.zzy.StudentResultSystem.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zzy.StudentResultSystem.bean.*;
import com.zzy.StudentResultSystem.service.ClassService;
import com.zzy.StudentResultSystem.service.TakesService;
import com.zzy.StudentResultSystem.service.StudentService;
import com.zzy.StudentResultSystem.bean.Errors;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @ClassName StudentController
 * @Author ZZY
 **/

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private ClassService classService;

    @Autowired
    private TakesService takesService;

    @PostMapping(value = "/stu/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password, Map<String,Object> map, HttpSession session)
    {
        Student stu=studentService.login(username,password);
        if(stu!=null)
        {
            session.setAttribute("loginUser",username);
            return "redirect:/stumain.html";
        }
        else
        {
            map.put("msg","用户名或密码错误，请重新输入！");
            return  "login";
        }
    }

    //返回首页
    @GetMapping(value = "/stu/toindex")
    public String toindex(){
        return "redirect:/stumain.html";
    }


    //返回学生信息修改页面
    @GetMapping(value = "/stu/toUpdateMsgPage")
    public String toUpdateMsgPage(HttpSession httpSession, Model model)
    {

        Student stu= studentService.selectById((String) httpSession.getAttribute("loginUser"));
        List<Classes> classes=classService.getAllClass();
        model.addAttribute("stu",stu);
        model.addAttribute("classes",classes);
        return "stu/updateStu";
    }

    //更新学生信息操作
    @PutMapping(value = "/stu/updateStuMsg")
    public String updateStuMsg(@Valid Student student, BindingResult bindingResult, Model model,HttpSession httpSession)
    {
        List<ObjectError> allErrors = bindingResult.getAllErrors();
        List<Errors> errmsg = new ArrayList<>();
        List<Classes> classes = classService.getAllClass();
        if(allErrors.size()==0)
        {
            Student studentInit=studentService.selectById((String) httpSession.getAttribute("loginUser"));
            student.setStuId(studentInit.getStuId());
            student.setStuName(studentInit.getStuName());
            student.setStuClass(studentInit.getStuClass());
            student.setStuSex(studentInit.getStuSex());

//            studentService.deleStu(studentInit.getStuId());
            studentService.addStudentHavePass(student);
            return "redirect:/updateSucc.html";
        }
        else
        {
            for (ObjectError error:allErrors)
            {
                errmsg.add(new Errors(error.getDefaultMessage()));
            }
            model.addAttribute("errors",errmsg);
            model.addAttribute("stu",student);
            model.addAttribute("classes",classes);
            return "stu/updateStu";
        }
    }

    //返回学生成绩首页
    @GetMapping(value = "/stu/toresdmin/{pn}")
    public String toresdmin(@PathVariable("pn") Integer pn,Model model,HttpSession httpSession)
    {
        PageHelper.startPage(pn, 9);
        System.out.println((String)httpSession.getAttribute("loginUser"));
        List<Takes> takes = takesService.selectByStuId((String)httpSession.getAttribute("loginUser"));
        PageInfo<Takes> page = new PageInfo<Takes>(takes, 5);
        model.addAttribute("pageInfo",page);
        return "stu/resultlist";
    }

    //根据学期查询成绩
    @GetMapping(value = "/stu/selectResByTerm/{pn}")
    public String selectResByTerm(@PathVariable("pn") Integer pn,@Param("resTerm") String resTerm, Model model,HttpSession httpSession)
    {
        PageHelper.startPage(pn, 9);
        List<Takes> takes = takesService.selectByStuIdAndResTerm((String) httpSession.getAttribute("loginUser"),resTerm);
        PageInfo<Takes> page = new PageInfo<Takes>(takes, 5);
        model.addAttribute("pageInfo",page);
        model.addAttribute("resTerm",resTerm);
        return "stu/reslistbyterm";
    }
}
