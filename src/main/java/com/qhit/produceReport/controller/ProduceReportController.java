package com.qhit.produceReport.controller; 

import com.qhit.baseFlow.pojo.BaseFlow;
import com.qhit.baseFlow.service.IBaseFlowService;
import com.qhit.energyConsume.pojo.EnergyConsume;
import com.qhit.energyConsume.service.IEnergyConsumeService;
import com.qhit.energyConsume.service.impl.EnergyConsumeServiceImpl;
import com.qhit.produceJob.pojo.ProduceJob;
import com.qhit.produceJob.service.IProduceJobService;
import com.qhit.produceJob.service.impl.ProduceJobServiceImpl;
import com.qhit.produceReport.pojo.ProduceReport;
import com.qhit.produceReport.service.IProduceReportService;
import com.qhit.produceReport.service.impl.ProduceReportServiceImpl;
import com.qhit.utils.CommonlyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.annotation.Resource; 
import java.util.List;
import java.util.Random;

import org.springframework.web.bind.annotation.RestController; 

/** 
* Created by GeneratorCode on 2019/04/10
*/ 

@RestController 
@RequestMapping("/produceReport") 
public class ProduceReportController { 

    @Resource 
    IProduceReportService produceReportService;

    @RequestMapping("/insert") 
    public void insert(ProduceReport produceReport) { 
        produceReportService.insert(produceReport); 
    } 

    @RequestMapping("/delete") 
    public void delete(Integer reportid) { 
        produceReportService.delete(reportid); 
    } 

    @RequestMapping("/update") 
    public void update(ProduceReport produceReport) { 
        produceReportService.update(produceReport); 
    } 

    @RequestMapping("/updateSelective") 
    public List<ProduceReport> updateSelective(ProduceReport produceReport) {
        List<ProduceReport> list = produceReportService.updateSelective(produceReport);
        return list;
    } 

    @RequestMapping("/load") 
    public ProduceReport load(Integer reportid) { 
        ProduceReport produceReport = produceReportService.findById(reportid);
        return produceReport; 
    } 

    @RequestMapping("/list") 
    public List<ProduceReport> list()  { 
        List<ProduceReport> list = produceReportService.findAll();
        return list; 
    } 

    @RequestMapping("/search") 
    public List<ProduceReport> search(ProduceReport produceReport) { 
        List<ProduceReport> list = produceReportService.search(produceReport); 
        return list; 
    } 

    @RequestMapping("/completeTask")
    public  List<ProduceReport> compoleteTask(ProduceReport produceReport){
        List<ProduceReport> list = produceReportService.oentralCcontrol(produceReport);

        return list;
    }





} 
