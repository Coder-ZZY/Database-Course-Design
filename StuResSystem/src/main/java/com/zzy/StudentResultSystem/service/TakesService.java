package com.zzy.StudentResultSystem.service;

import com.zzy.StudentResultSystem.bean.Rank;
import com.zzy.StudentResultSystem.bean.Takes;

import java.util.List;

/**
 * @ClassName ResultssService
 * @Author ZZY
 **/
public interface TakesService {

    List<Takes> getAllResult();

    List<Takes> selectByStuId(String stuId);

    List<Takes> selectByStuIdAndResTerm(String stuId, String resTerm);

    int addTakes(Takes takes);

    int updateTakes(Takes takes);

    int deleteResultById(int resId);

    Takes selectResultByStuIdAndSubName(String stuId, String subName);

    Takes selectResultByResId(int resId);

    List<Rank> selectRankByTerm(String resTerm);

    List<Rank> selectRankByTermAndStuClass(String resTerm,String stuClass);
}
