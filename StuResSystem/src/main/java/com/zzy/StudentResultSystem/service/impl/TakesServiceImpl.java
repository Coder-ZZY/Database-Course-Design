package com.zzy.StudentResultSystem.service.impl;

import com.zzy.StudentResultSystem.bean.Rank;
import com.zzy.StudentResultSystem.bean.Takes;
import com.zzy.StudentResultSystem.mapper.CourseMapper;
import com.zzy.StudentResultSystem.mapper.TakesMapper;
import com.zzy.StudentResultSystem.mapper.StudentMapper;
import com.zzy.StudentResultSystem.service.TakesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @ClassName TakesServiceImpl
 * @Author ZZY
 **/
@Service
public class TakesServiceImpl implements TakesService {

    @Autowired
    private TakesMapper takesMapper;

    @Autowired
    private StudentMapper studentMapper;

    @Autowired
    private CourseMapper courseMapper;

    @Override
    public List<Takes> getAllResult() {
        List<Takes> list =takesMapper.selectAllResult();
        list.stream().forEach(e->{
            e.setStu(studentMapper.selectStudentByStuId(e.getStuId()));
            e.setCou(courseMapper.selectClassById(e.getCourseId()));
        });
        return list;
    }

    @Override
    public List<Takes> selectByStuId(String stuId) {
        List<Takes> list = takesMapper.selectResultByStuId(stuId);
        list.stream().forEach(e->{
            e.setStu(studentMapper.selectStudentByStuId(e.getStuId()));
            e.setCou(courseMapper.selectClassById(e.getCourseId()));
        });
        return list;
    }

    @Override
    public List<Takes> selectByStuIdAndResTerm(String stuId, String resTerm) {
        List<Takes> list = takesMapper.selectResultByStuId(stuId);
        list.stream().forEach(e->{
            e.setStu(studentMapper.selectStudentByStuId(e.getStuId()));
            e.setCou(courseMapper.selectClassById(e.getCourseId()));
        });
        return list.stream().filter(e->(e.getCou().getCourseTerm().equals(resTerm))).collect(Collectors.toList());
    }

    @Override
    public int addTakes(Takes takes) {
        return takesMapper.insertResult(takes);
    }

    @Override
    public int updateTakes(Takes takes) {
        return takesMapper.updateResult(takes);
    }

    @Override
    public int deleteResultById(int takesId) {
        return takesMapper.deleteResultById(takesId);
    }

    @Override
    public Takes selectResultByStuIdAndSubName(String stuId, String subName) {
        return takesMapper.selectResultByStuIdAndSubName(stuId,subName);
    }

    @Override
    public Takes selectResultByResId(int takesId) {
        return takesMapper.selectResultByResId(takesId);
    }

    @Override
    public List<Rank> selectRankByTerm(String resTerm) {
        List<Rank> ranks = takesMapper.selectRankByTerm(resTerm);
        for (Rank r :ranks) {
            Map<String, Integer> reamap=new HashMap<>();
            List<Map<String, Integer>> maps = takesMapper.selectResultMap(r.getStuId(), r.getResTerm());
            for (Map map:maps)
            {
                reamap.put((String)map.get("sub_name"),(Integer) map.get("res_num"));
            }
            r.setStuName(studentMapper.selectNameById(r.getStuId()));
            r.setResmap(reamap);
        }
        return ranks;
    }

    @Override
    public List<Rank> selectRankByTermAndStuClass(String resTerm, String stuClass) {
        List<Rank> ranks= takesMapper.selectRankByTermAndStuId(studentMapper.selectIdByClass(stuClass),resTerm);
        for (Rank r :ranks) {
            Map<String, Integer> reamap=new HashMap<>();
            List<Map<String, Integer>> maps = takesMapper.selectResultMap(r.getStuId(), r.getResTerm());
            for (Map map:maps)
            {
                reamap.put((String)map.get("sub_name"),(Integer) map.get("res_num"));
            }
            r.setStuName(studentMapper.selectNameById(r.getStuId()));
            r.setResmap(reamap);
        }
        return ranks;
    }
}
