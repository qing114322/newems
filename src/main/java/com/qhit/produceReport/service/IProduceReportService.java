package com.qhit.produceReport.service;

import java.util.List;
import java.util.Map;

import com.qhit.baseDevice.pojo.BaseDevice;
import com.qhit.baseDevtype.pojo.BaseDevtype;
import com.qhit.baseFlow.pojo.BaseFlow;
import com.qhit.produceReport.pojo.ProduceReport;
/**
* Created by GeneratorCode on 2019/04/10
*/
public interface IProduceReportService {

    boolean insert(Object object);

    boolean  update(Object object);

    List<ProduceReport> updateSelective(Object object);

    boolean delete(Object id);

    List findAll();

    List<ProduceReport> findByCompid(Integer compid);

    ProduceReport findById(Object id);

    List<ProduceReport> search(ProduceReport produceReport);

    List<ProduceReport> oentralCcontrol(ProduceReport produceReport);

    List<Map> selectFlowAmount(List<BaseFlow> flows, String year);

    List<Map> selectDevtypeAmount(List<BaseDevtype> Devtypes, String year);

    List<Map> selectDevAmount(List<BaseDevice> BaseDevice, String year);

    List<Map> selectFlowEnergy(String year,List<BaseFlow> flows);

    List<Map> selectDevtypeEnergy(String year,List<BaseDevtype> devtypes);

    List<Map> selectDevEnergy(String year,List<BaseDevice> devices);

    List<Map> selectDevUnitElectric(String year,List<BaseDevice> devices);

    List<Map> selectDevUnitWater(String year,List<BaseDevice> devices);

    List<Map> selectDevUnitOil(String year,List<BaseDevice> devices);

    List<Map> selectModel(String year,BaseFlow baseFlow);

    List<Map> selectConsume(String year,BaseFlow baseFlow);

    List<Map> selectCompUsage(String year);

    List<Map> selectCompIntactRatio(String year);

    List<Map> selectCost(String year,Integer compid);

    List<Map> selectCompAmount(String year);

    List<Map> selectCompConsume(String year);
}