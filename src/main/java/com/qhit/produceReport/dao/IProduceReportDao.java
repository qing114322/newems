package com.qhit.produceReport.dao;

import com.qhit.baseFlow.pojo.BaseFlow;
import org.apache.ibatis.annotations.Mapper;
import com.qhit.produceReport.pojo.ProduceReport;
import java.util.List;
import java.util.Map;

/** 
* Created by GeneratorCode on 2019/04/10
*/

@Mapper  
public interface IProduceReportDao {

    boolean insert(Object object);

    boolean  update(Object object);

    boolean  updateSelective(Object object);

    boolean delete(Object object);

    List freeFind(String sql);

    List findAll();

    List findById(Object id);

    boolean freeUpdate(String sql);

    List<ProduceReport> search(ProduceReport produceReport);

    List findByShipname(Object shipname);

    List findByCapacity(Object capacity);

    List findByPlanjobtime(Object planjobtime);

    List findByStartjobtime(Object startjobtime);

    List findByCompletetime(Object completetime);

    List findByFlowid(Object flowid);

    List findByReportuser(Object reportuser);

    List findByCompid(Object compid);

    List<Map> selectFlowAmount(Map map);

    List<Map> selectDevtypeAmount(Map map);

    List<Map> selectDevAmount(Map map);

    List<Map> selectFlowEnergy(Map map);

    List<Map> selectDevtypeEnergy(Map map);

    List<Map> selectDevEnergy(Map map);

    List<Map> selectDevUnitElectric(Map map);

    List<Map> selectDevUnitWater(Map map);

    List<Map> selectDevUnitOil(Map map);

    List<Map> selectModel(Map map);

    List<Map> selectConsume(Map map);

    List<Map> selectCompUsage(Map map);

    List<Map> selectCompIntactRatio(Map map);

    List<Map> selectCost(Map map);

    List<Map> selectCompAmount(Map map);

    List<Map> selectCompConsume(Map map);
}