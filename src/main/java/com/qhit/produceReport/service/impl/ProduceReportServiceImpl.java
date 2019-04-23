package com.qhit.produceReport.service.impl;

import com.qhit.baseDevice.pojo.BaseDevice;
import com.qhit.baseDevtype.pojo.BaseDevtype;
import com.qhit.baseFlow.pojo.BaseFlow;
import com.qhit.baseFlow.service.IBaseFlowService;
import com.qhit.baseFlow.service.impl.BaseFlowServiceImpl;
import com.qhit.energyConsume.pojo.EnergyConsume;
import com.qhit.energyConsume.service.IEnergyConsumeService;
import com.qhit.energyConsume.service.impl.EnergyConsumeServiceImpl;
import com.qhit.produceJob.pojo.ProduceJob;
import com.qhit.produceJob.service.IProduceJobService;
import com.qhit.produceJob.service.impl.ProduceJobServiceImpl;
import com.qhit.produceReport.service.IProduceReportService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.qhit.produceReport.dao.IProduceReportDao;
import com.qhit.produceReport.pojo.ProduceReport;
import com.qhit.utils.CommonlyUtils;
import org.springframework.stereotype.Service;
import javax.annotation.Resource; 

/**
* Created by GeneratorCode on 2019/04/10
*/

@Service 
public class ProduceReportServiceImpl  implements IProduceReportService {

    @Resource 
    IProduceReportDao dao;
    @Resource
    IBaseFlowService baseFlowService;
    @Resource
    IProduceJobService produceJobService;
    @Resource
    IEnergyConsumeService energyConsumeService;

    @Override 
    public boolean insert(Object object) { 
        return dao.insert(object); 
    } 

    @Override 
    public boolean update(Object object) { 
        return dao.update(object); 
    } 

    @Override 
    public List<ProduceReport> updateSelective(Object object) {
        dao.updateSelective(object);
        return findAll();
    }

    @Override
    public List<ProduceReport> findByCompid(Integer compid) {
        return dao.findByCompid(compid);
    }

    @Override 
    public boolean delete(Object id) { 
        ProduceReport produceReport = findById(id); 
        return dao.delete(produceReport); 
    } 

    @Override 
    public List findAll() {
        List<ProduceReport> list = dao.findAll();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getStartjobtime()==null&&list.get(i).getCompletetime()==null){
                list.get(i).setStatus("未完成");
            }else if (list.get(i).getStartjobtime()!=null&&list.get(i).getCompletetime()==null){
                list.get(i).setStatus("作业中");
            }else if (list.get(i).getStartjobtime()!=null&&list.get(i).getCompletetime()!=null){
                list.get(i).setStatus("已完成");
            }else {
                list.get(i).setStatus("发生错误");
            }
        }
        return list;
    } 

    @Override 
    public ProduceReport findById(Object id) { 
        List<ProduceReport> list = dao.findById(id);

        return  list.get(0); 
    } 

    @Override 
    public List<ProduceReport> search(ProduceReport produceReport) { 
        return dao.search(produceReport); 
    }

    @Override
    public List<ProduceReport> oentralCcontrol(ProduceReport produceReport) {


        System.out.println(produceReport.toString());
        updateSelective(produceReport);

        ProduceReport pr = findById(produceReport.getReportid());
        BaseFlow baseFlow = baseFlowService.findById(pr.getFlowid());
        //斗轮机

        ProduceJob produceJob1 = new ProduceJob();
        produceJob1.setDevid(baseFlow.getDljid());
        produceJob1.setStarttime(produceReport.getStartjobtime());
        produceJob1.setCompletetime(produceReport.getCompletetime());
        produceJob1.setDuration(CommonlyUtils.amountMinute(produceReport.getStartjobtime(),produceReport.getCompletetime(),"m"));
        produceJob1.setAmount((double) (CommonlyUtils.reserveDecimal(pr.getCapacity()/10*4,2)));
        produceJob1.setReportid(produceReport.getReportid());
        produceJobService.insert(produceJob1);
        //装船机
        ProduceJob produceJob2 = new ProduceJob();
        produceJob2.setDevid(baseFlow.getZcjid());
        produceJob2.setStarttime(produceReport.getStartjobtime());
        produceJob2.setCompletetime(produceReport.getCompletetime());
        produceJob2.setDuration(CommonlyUtils.amountMinute(produceReport.getStartjobtime(),produceReport.getCompletetime(),"m"));
        produceJob2.setAmount((double) (CommonlyUtils.reserveDecimal(pr.getCapacity()/10*4,2)));
        produceJob2.setReportid(produceReport.getReportid());
        produceJobService.insert(produceJob2);
        //皮带机
        ProduceJob produceJob3 = new ProduceJob();
        produceJob3.setDevid(baseFlow.getPdjid());
        produceJob3.setStarttime(produceReport.getStartjobtime());
        produceJob3.setCompletetime(produceReport.getCompletetime());
        produceJob3.setDuration(CommonlyUtils.amountMinute(produceReport.getStartjobtime(),produceReport.getCompletetime(),"m"));
        produceJob3.setAmount((double) (CommonlyUtils.reserveDecimal(pr.getCapacity()/10*2,2)));
        produceJob3.setReportid(produceReport.getReportid());
        produceJobService.insert(produceJob3);




//      斗轮耗能
        EnergyConsume energyConsume1 = new EnergyConsume();
        energyConsume1.setDevid(baseFlow.getDljid());
        energyConsume1.setElectric(CommonlyUtils.reserveDecimal((produceJob2.getAmount())*CommonlyUtils.creatRandem(100,300,2),2));
        energyConsume1.setWater(CommonlyUtils.reserveDecimal((produceJob2.getAmount())*CommonlyUtils.creatRandem(1,10,2),2));
        energyConsume1.setOil(CommonlyUtils.reserveDecimal((produceJob2.getAmount())*CommonlyUtils.creatRandem(10,40,2),2));
        energyConsume1.setReportid(pr.getReportid());
        energyConsumeService.insert(energyConsume1);

//      装船耗能
        EnergyConsume energyConsume2= new EnergyConsume();
        energyConsume2.setDevid(baseFlow.getZcjid());
        energyConsume2.setElectric(CommonlyUtils.reserveDecimal((produceJob2.getAmount())*CommonlyUtils.creatRandem(100,300,2),2));
        energyConsume2.setWater(CommonlyUtils.reserveDecimal((produceJob2.getAmount())*CommonlyUtils.creatRandem(1,10,2),2));
        energyConsume2.setOil(CommonlyUtils.reserveDecimal((produceJob2.getAmount())*CommonlyUtils.creatRandem(10,40,2),2));
        energyConsume2.setReportid(pr.getReportid());
        energyConsumeService.insert(energyConsume2);

//        皮带耗能
        EnergyConsume energyConsume3= new EnergyConsume();
        energyConsume3.setDevid(baseFlow.getPdjid());
        energyConsume3.setElectric(CommonlyUtils.reserveDecimal((produceJob3.getAmount())*CommonlyUtils.creatRandem(100,300,2),2));
        energyConsume3.setWater(CommonlyUtils.reserveDecimal((produceJob3.getAmount())*CommonlyUtils.creatRandem(1,10,2),2));
        energyConsume3.setOil(CommonlyUtils.reserveDecimal((produceJob3.getAmount())*CommonlyUtils.creatRandem(10,40,2),2));
        energyConsume3.setReportid(pr.getReportid());
        energyConsumeService.insert(energyConsume3);

        //返回LIST

        return findAll();

    }

    @Override
    public List<Map> selectFlowAmount(List<BaseFlow> flows, String year) {
        Map map = new HashMap();
        map.put("year",year);
        map.put("flows",flows);
        return dao.selectFlowAmount(map);
    }

    @Override
    public List<Map> selectDevtypeAmount(List<BaseDevtype> Devtypes, String year) {
        Map map = new HashMap();
        map.put("year",year);
        map.put("devtypes",Devtypes);
        return dao.selectDevtypeAmount(map);
    }

    @Override
    public List<Map> selectDevAmount(List<BaseDevice> BaseDevices, String year) {
        Map map = new HashMap();
        map.put("year",year);
        map.put("devices",BaseDevices);
        return dao.selectDevAmount(map);
    }

    @Override
    public List<Map> selectFlowEnergy(String year, List<BaseFlow> flows) {
        Map map = new HashMap();
        map.put("year",year);
        map.put("flows",flows);
        return dao.selectFlowEnergy(map);
    }

    @Override
    public List<Map> selectDevtypeEnergy(String year, List<BaseDevtype> devtypes) {
        Map map = new HashMap();
        map.put("year",year);
        map.put("devtypes",devtypes);
        return dao.selectDevtypeEnergy(map);
    }

    @Override
    public List<Map> selectDevEnergy(String year, List<BaseDevice> devices) {
        Map map = new HashMap();
        map.put("year",year);
        map.put("devices",devices);
        return dao.selectDevEnergy(map);
    }

    @Override
    public List<Map> selectDevUnitElectric(String year, List<BaseDevice> devices) {
        Map map = new HashMap();
        map.put("year",year);
        map.put("devices",devices);
        return dao.selectDevUnitElectric(map);
    }

    @Override
    public List<Map> selectDevUnitWater(String year, List<BaseDevice> devices) {
        Map map = new HashMap();
        map.put("year",year);
        map.put("devices",devices);
        return dao.selectDevUnitWater(map);
    }

    @Override
    public List<Map> selectDevUnitOil(String year, List<BaseDevice> devices) {
        Map map = new HashMap();
        map.put("year",year);
        map.put("devices",devices);
        return dao.selectDevUnitOil(map);
    }

    @Override
    public List<Map> selectModel(String year,BaseFlow baseFlow) {
        Map map = new HashMap();
        map.put("year",year);
        map.put("baseFlow",baseFlow);
        return dao.selectModel(map);
    }

    @Override
    public List<Map> selectConsume(String year, BaseFlow baseFlow) {
        Map map = new HashMap();
        map.put("year",year);
        map.put("baseFlow",baseFlow);
        return dao.selectConsume(map);
    }

    @Override
    public List<Map> selectCompUsage(String year) {
        Map map = new HashMap();
        map.put("year",year);
        return dao.selectCompUsage(map);
    }

    @Override
    public List<Map> selectCompIntactRatio(String year) {
        Map map = new HashMap();
        map.put("year",year);
        return dao.selectCompIntactRatio(map);
    }

    @Override
    public List<Map> selectCost(String year, Integer compid) {
        Map map = new HashMap();
        map.put("year",year);
        map.put("compid",compid);
        return dao.selectCost(map);
    }

    @Override
    public List<Map> selectCompAmount(String year) {
        Map map = new HashMap();
        map.put("year",year);
        return dao.selectCompAmount(map);
    }

    @Override
    public List<Map> selectCompConsume(String year) {
        Map map = new HashMap();
        map.put("year",year);
        return dao.selectCompConsume(map);
    }




}