package com.qhit.reports;

import com.qhit.baseCompany.pojo.BaseCompany;
import com.qhit.baseCompany.service.IBaseCompanyService;
import com.qhit.baseDevice.pojo.BaseDevice;
import com.qhit.baseDevice.service.IBaseDeviceService;
import com.qhit.baseDevtype.pojo.BaseDevtype;
import com.qhit.baseDevtype.service.IBaseDevtypeService;
import com.qhit.baseFlow.pojo.BaseFlow;
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
 * Created by 114322 on 2019/4/16.
 */
@RestController
@RequestMapping("/energyConsume")
public class EnergyConsume {
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
    @RequestMapping("/flowConsume")
    public Object flowConsume(String year, HttpSession session){
        Map map = new HashMap();
        BaseUser baseUser = (BaseUser) session.getAttribute("baseUser");
        Integer compid = baseUser.getCompid();
        List<BaseFlow> flows = baseFlowService.findByCompid(compid);
//        列属性columns
        String[] columns = new String[flows.size()+1];
        columns[0]="月份";
        for (int i = 0; i <flows.size() ; i++) {
            columns[i+1]=flows.get(i).getFlowname();
        }
//        行属性rows
        List<Map> rows = produceReportService.selectFlowEnergy(year,flows);
        map.put("columns",columns);
        map.put("rows",rows);
        return  map;
    }

    @RequestMapping("/devTypeConsume")
    public Object devtypeConsume(String year){
        Map map = new HashMap();
        List<BaseDevtype> lists = baseDevtypeService.findAll();
        System.out.println(lists);
//        列属性columns
        String[] columns = new String[lists.size()+1];
        columns[0]="月份";
        for (int i = 0; i <lists.size() ; i++) {
            columns[i+1]=lists.get(i).getTypename();
        }
//        行属性rows
        List<Map> rows = produceReportService.selectDevtypeEnergy(year,lists);
        map.put("columns",columns);
        map.put("rows",rows);
        return  map;
    }

    @RequestMapping("/devConsume")
    public Object devConsume(String year, HttpSession session){
        Map map = new HashMap();
        BaseUser baseUser = (BaseUser) session.getAttribute("baseUser");
        Integer compid = baseUser.getCompid();
        List<BaseDevice> list = baseDeviceService.findByCompid(compid);
//        列属性columns
        String[] columns = new String[list.size()+1];
        columns[0]="月份";
        for (int i = 0; i <list.size() ; i++) {
            columns[i+1]=list.get(i).getDevname();
        }
//        行属性rows
        List<Map> rows = produceReportService.selectDevEnergy(year,list);
        map.put("columns",columns);
        map.put("rows",rows);
        return  map;
    }


    @RequestMapping("/electricConsume")
    public Object electricConsume(String year, HttpSession session){
        Map map = new HashMap();
        BaseUser baseUser = (BaseUser) session.getAttribute("baseUser");
        Integer compid = baseUser.getCompid();
        List<BaseDevice> list = baseDeviceService.findByCompid(compid);
//        列属性columns
        String[] devArr = new String[list.size()+1];
        devArr[0]="月份";
        for (int i = 0; i <list.size() ; i++) {
            devArr[i+1]=list.get(i).getDevname();
        }
//        行属性rows
        List<Map> rows = produceReportService.selectDevUnitElectric(year,list);
        map.put("columns",devArr);
        map.put("rows",rows);
        return  map;
    }

    @RequestMapping("/waterConsume")
    public Object waterConsume(String year, HttpSession session){
        Map map = new HashMap();
        BaseUser baseUser = (BaseUser) session.getAttribute("baseUser");
        Integer compid = baseUser.getCompid();
        List<BaseDevice> devices = baseDeviceService.findByCompid(compid);
//        列属性columns
        String[] devArr = new String[devices.size()+1];
        devArr[0]="月份";
        for (int i = 0; i <devices.size() ; i++) {
            devArr[i+1]=devices.get(i).getDevname();
        }
//        行属性rows
        List<Map> rows = produceReportService.selectDevUnitWater(year,devices);
        map.put("columns",devArr);
        map.put("rows",rows);
        return  map;
    }
    @RequestMapping("/oilConsume")
    public Object oilConsume(String year, HttpSession session){
        Map map = new HashMap();
        BaseUser baseUser = (BaseUser) session.getAttribute("baseUser");
        Integer compid = baseUser.getCompid();
        List<BaseDevice> devices = baseDeviceService.findByCompid(compid);
//        列属性columns
        String[] devArr = new String[devices.size()+1];
        devArr[0]="月份";
        for (int i = 0; i <devices.size() ; i++) {
            devArr[i+1]=devices.get(i).getDevname();
        }
//        行属性rows
        List<Map> rows = produceReportService.selectDevUnitOil(year,devices);
        map.put("columns",devArr);
        map.put("rows",rows);
        return  map;
    }

    @RequestMapping("/model")
    public Object model(String year, HttpSession session){
        Map map = new HashMap();
        BaseUser baseUser = (BaseUser) session.getAttribute("baseUser");
        Integer compid = baseUser.getCompid();
        BaseCompany baseCompany = baseCompanyService.findById(compid);
        List<BaseFlow> baseFlows = baseFlowService.findByCompid(compid);
        double amounts = 0;
        List<Map> m = new ArrayList<Map>();
        for (int i = 0; i < baseFlows.size(); i++) {
            Map map1 = new HashMap();
            double amount = 0;
            List<Map> list = produceReportService.selectConsume(year, baseFlows.get(i));
            for (int j = 0; j < list.size(); j++) {
                amount += (double)list.get(j).get("consume");
            }
            amounts+=amount;
            map1.put("flow",baseFlows.get(i).getFlowname());
            map1.put("consume",amount);
            map1.put("children",list);
            m.add(map1);
        }
        map.put("comp",baseCompany.getCompname());
        map.put("consume",amounts);
        map.put("children",m);
        System.out.println(map);
        return  map;
    }
}

