package com.qhit.reports;

import com.qhit.baseCompany.service.IBaseCompanyService;
import com.qhit.baseDevice.service.IBaseDeviceService;
import com.qhit.baseDevtype.service.IBaseDevtypeService;
import com.qhit.baseFlow.service.IBaseFlowService;
import com.qhit.baseUser.pojo.BaseUser;
import com.qhit.produceReport.service.IProduceReportService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 114322 on 2019/4/23.
 */
@RestController
@RequestMapping("/devInfo")
public class DevInfo {

    @Resource
    IBaseFlowService baseFlowService;
    @Resource
    IProduceReportService produceReportService;
    @Resource
    IBaseDevtypeService baseDevtypeService;
    @Resource
    IBaseDeviceService baseDeviceService;
    @Resource
    IBaseCompanyService baseCompanyService;

    @RequestMapping("/usage")
    public Object usage(String year){
        Map map = new HashMap();
        List<String> list = new ArrayList<String>();
        list.add("compname");
        list.add("devType");
        list.add("ratio");
//        行属性rows
        List<Map> rows = produceReportService.selectCompUsage(year);
        map.put("columns",list);
        map.put("rows",rows);
        return map;
    }

    @RequestMapping("/intactRatio")
    public Object intactRatio(String year){
        Map map = new HashMap();
        List<String> list = new ArrayList<String>();
        list.add("compname");
        list.add("devType");
        list.add("ratio");
//        行属性rows
        List<Map> rows = produceReportService.selectCompIntactRatio(year);
        map.put("columns",list);
        map.put("rows",rows);
        return map;
    }

    @RequestMapping("/cost")
    public Object cost(String year, HttpSession session){
        BaseUser baseUser = (BaseUser) session.getAttribute("baseUser");
        Integer compid = baseUser.getCompid();
        List<Map> rows = produceReportService.selectCost(year,compid);
        return rows;
    }

    @RequestMapping("/amount")
    public Object amount(String year){
        Map map = new HashMap();
        List<String> list = new ArrayList<String>();
        list.add("compname");
        list.add("devType");
        list.add("amount");
//        行属性rows
        List<Map> rows = produceReportService.selectCompAmount(year);
        map.put("columns",list);
        map.put("rows",rows);
        return map;
    }

    @RequestMapping("/consume")
    public Object consume(String year){
        Map map = new HashMap();
        List<String> list = new ArrayList<String>();
        list.add("compname");
        list.add("devType");
        list.add("consume");
//        行属性rows
        List<Map> rows = produceReportService.selectCompConsume(year);
        map.put("columns",list);
        map.put("rows",rows);
        return map;
    }

}
