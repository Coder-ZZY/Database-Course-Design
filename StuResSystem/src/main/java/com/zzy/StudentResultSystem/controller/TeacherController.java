package com.zzy.StudentResultSystem.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zzy.StudentResultSystem.bean.*;
import com.zzy.StudentResultSystem.mapper.CourseMapper;
import com.zzy.StudentResultSystem.service.ClassService;
import com.zzy.StudentResultSystem.service.TakesService;
import com.zzy.StudentResultSystem.service.StudentService;
import com.zzy.StudentResultSystem.service.TeacherService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.*;

/**
 * @ClassName TeacherControllerO
 * @Author ZZY
 **/
@Controller
public class TeacherController {
    @Autowired
    private TeacherService teacherService;

    @Autowired
    private TakesService takesService;

    @Autowired
    private ClassService classService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private CourseMapper courseMapper;


    @PostMapping(value = "/tea/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password, Map<String,Object> map, HttpSession session)
    {
        Teacher tea=teacherService.login(username,password);
        if(tea!=null)
        {
            session.setAttribute("loginUser",username);
            return "redirect:/teamain.html";
        }
        else
        {
            map.put("msg","用户名或密码错误，请重新输入！");
            return  "login";
        }
    }

    //返回首页
    @GetMapping(value = "/tea/toindex")
    public String teaToIndex(){
        return "redirect:/teamain.html";
    }


    //返回教师信息修改页面
    @GetMapping(value = "/tea/toUpdateMsgPage")
    public String teaToUpdateMsgPage(HttpSession httpSession, Model model)
    {

        Teacher tea= teacherService.selectById((String) httpSession.getAttribute("loginUser"));
        model.addAttribute("tea",tea);
        return "tea/updatetea";
    }

    //更新教师信息操作
    @PutMapping(value = "/tea/updateTeaMsg")
    public String updateTeaMsg(@Valid Teacher teacher, BindingResult bindingResult, Model model, HttpSession httpSession)
    {
        List<ObjectError> allErrors = bindingResult.getAllErrors();
        List<Errors> errmsg = new ArrayList<>();
        if(allErrors.size()==0)
        {
            Teacher teacherInit=teacherService.selectById((String) httpSession.getAttribute("loginUser"));
            teacher.setTeaId(teacherInit.getTeaId());
            teacher.setTeaName(teacherInit.getTeaName());
            teacher.setTeaSex(teacherInit.getTeaSex());

//            teacherService.deleTea(teacherInit.getTeaId());
            teacherService.addTeacherHavePass(teacher);
            return "redirect:/updateTeaSucc.html";
        }
        else
        {
            for (ObjectError error:allErrors)
            {
                errmsg.add(new Errors(error.getDefaultMessage()));
            }
            model.addAttribute("errors",errmsg);
            model.addAttribute("tea",teacher);
            return "tea/updatetea";
        }
    }

    //返回成绩管理首页
    @GetMapping(value = "/tea/toteadmin/{pn}")
    public String toteadmin(@PathVariable("pn") Integer pn, Model model)
    {
        PageHelper.startPage(pn, 6);
        List<Takes> takes = takesService.getAllResult();
        PageInfo<Takes> page = new PageInfo<Takes>(takes, 5);
        List<Classes> classes = classService.getAllClass();
        model.addAttribute("classes",classes);
        model.addAttribute("pageInfo",page);
        return "tea/tearesultlist";
    }

    //返回成绩添加页面
    @GetMapping(value = "/tea/resadd")
    public String toResAddPage(Model model)
    {
        List<Course> courseList = courseMapper.selectAll();
        model.addAttribute("courseList",courseList);
        return "tea/addResult";
    }

    //处理成绩添加事务
    @PostMapping(value = "/tea/resAdd")
    public String resAdd(@Valid Takes takes, BindingResult bindingResult, Model model)
    {
        List<ObjectError> allErrors = bindingResult.getAllErrors();
        List<Errors> errmsg = new ArrayList<>();
        Takes takesVail =null;
        if(allErrors.size()==0)
        {
            if(studentService.selectById(takes.getStuId())!=null) {
                takesVail = takesService.selectResultByStuIdAndSubName(takes.getStuId(), takes.getCourseId());
                if (takesVail == null) {
                    takesService.addTakes(takes);
                    return "redirect:/tea/toteadmin/1";
                } else {
                    errmsg.add(new Errors("已存在该学生的此成绩信息"));
                    model.addAttribute("errors", errmsg);
                    model.addAttribute("res", takes);
                    List<Course> courseList = courseMapper.selectAll();
                    model.addAttribute("courseList",courseList);
                    return "tea/addResult";
                }
            }
            else{
                errmsg.add(new Errors("不存在该学号的学生"));
                model.addAttribute("errors", errmsg);
                model.addAttribute("res", takes);
                List<Course> courseList = courseMapper.selectAll();
                model.addAttribute("courseList",courseList);
                return "tea/addResult";
            }
        }
        else {
            for (ObjectError error:allErrors)
            {
                errmsg.add(new Errors(error.getDefaultMessage()));
            }
            model.addAttribute("errors",errmsg);
            model.addAttribute("res", takes);
            List<Course> courseList = courseMapper.selectAll();
            model.addAttribute("courseList",courseList);
            return "tea/addResult";
        }
    }

    //返回成绩修改页面
    @GetMapping(value = "/tea/res/{resId}")
    public String updateResPage(@PathVariable("resId") int resId,Model model)
    {
        Takes takes = takesService.selectResultByResId(resId);
        model.addAttribute("res", takes);
        model.addAttribute("resId",resId);
        List<Course> courseList = courseMapper.selectAll();
        model.addAttribute("courseList",courseList);
        return "tea/updateResult";
    }

    //更新成绩信息操作
    @PutMapping(value = "/tea/res")
    public String updateRes(@Valid Takes takes, BindingResult bindingResult, Model model)
    {
        List<ObjectError> allErrors = bindingResult.getAllErrors();
        List<Errors> errmsg = new ArrayList<>();
        if(allErrors.size()==0)
        {
            System.out.println(takes);
            takesService.updateTakes(takes);
            return "redirect:/tea/toteadmin/1";
        }
        else
        {
            for (ObjectError error:allErrors)
            {
                errmsg.add(new Errors(error.getDefaultMessage()));
            }
            model.addAttribute("errors",errmsg);
            model.addAttribute("res", takes);
            return "tea/updateResult";
        }
    }

    //处理删除成绩信息事务
    @DeleteMapping(value = "/tea/res/{resId}")
    public String deleres(@PathVariable("resId") int stuId)
    {
        takesService.deleteResultById(stuId);
        return "redirect:/tea/toteadmin/1";
    }

    //根据ID查询学生的成绩
    @GetMapping(value = "/tea/selectById/{pn}")
    public String selectResultByStuId(@PathVariable("pn") Integer pn,@Param("stuId") String stuId, Model model)
    {
        PageHelper.startPage(pn, 6);
        List<Takes> takes = takesService.selectByStuId(stuId);
        PageInfo<Takes> page = new PageInfo<Takes>(takes, 5);
        List<Classes> classes=classService.getAllClass();
        model.addAttribute("classes",classes);
        model.addAttribute("pageInfo",page);
        model.addAttribute("stuId",stuId);
        return "tea/tearesultlistbystuid";
    }

    //返回成绩修改页面从根据学生号查询的页面发送来的
    @GetMapping(value = "/tea/resbyid/{resId}")
    public String updateResPageById(@PathVariable("resId") int resId,Model model)
    {
        Takes takes = takesService.selectResultByResId(resId);
        model.addAttribute("res", takes);
        model.addAttribute("resId",resId);
        List<Course> courseList = courseMapper.selectAll();
        model.addAttribute("courseList",courseList);
        return "tea/updateResultByid";
    }

    //更新成绩信息操作从根据学生号查询的页面发送来的
    @PutMapping(value = "/tea/resbyid")
    public String updateResById(@Valid Takes takes, BindingResult bindingResult, Model model)
    {


        List<ObjectError> allErrors = bindingResult.getAllErrors();
        List<Errors> errmsg = new ArrayList<>();
        if(allErrors.size()==0)
        {
            System.out.println(takes);
            takesService.deleteResultById(takes.getTakesId());
            takesService.addTakes(takes);
            return "redirect:/tea/selectById/1?stuId="+ takes.getStuId();
        }
        else
        {
            for (ObjectError error:allErrors)
            {
                errmsg.add(new Errors(error.getDefaultMessage()));
            }
            model.addAttribute("errors",errmsg);
            model.addAttribute("res", takes);
            return "tea/updateResultByid";
        }
    }

    //处理删除成绩信息事务从根据学生号查询的页面发送来的
    @DeleteMapping(value = "/tea/resbyid/{resId}")
    public String deleresById(@PathVariable("resId") int resId)
    {
        Takes takes = takesService.selectResultByResId(resId);
        takesService.deleteResultById(resId);
        return "redirect:/tea/selectById/1?stuId="+ takes.getStuId();
    }

    //返回查询学生排名主页
    @GetMapping(value ="/tea/torank")
    public String torankpage()
    {
        return "tea/rank";
    }

    //处理查询学生排名事务
    @GetMapping(value = "/tea/selectRank")
    public String selectRank(@Param("resTerm") String resTerm, Model model)
    {
        List<Rank> ranks= takesService.selectRankByTerm(resTerm);
        model.addAttribute("ranks",ranks);
        model.addAttribute("resTerm",resTerm);
        return "tea/ranklist";
    }

    //返回根据班级查询学生排名主页
    @GetMapping(value ="/tea/torankbyclass")
    public String torankbyclasspage(Model model)
    {
        return "tea/rankbyclass";
    }

    //处理根据班级查询学生排名事务
    @GetMapping(value = "/tea/selectRankbyclass")
    public String selectRankbyclass(@Param("resTerm") String resTerm,@Param("className")String className, Model model)
    {
        List<Errors> errmsg = new ArrayList<>();
        if(resTerm.equals("") ||className.equals(""))
        {
            errmsg.add(new Errors("请输入学期信息以及班级信息"));
            model.addAttribute("errors", errmsg);
            return "tea/rankbyclass";
        }
        else
        {
            List<Rank> ranks= takesService.selectRankByTermAndStuClass(resTerm,className);
            model.addAttribute("ranks",ranks);
            model.addAttribute("resTerm",resTerm);
            model.addAttribute("className",className);
            return "tea/ranklistbyclass";
        }
    }

}
