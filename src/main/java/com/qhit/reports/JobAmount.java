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
 * Created by Administrator on 2019/4/13 0013.
 */
@RestController
@RequestMapping("/jobAmount")
public class JobAmount {

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

    @RequestMapping("/flowAmount")
    public Object flowAmount(String year, HttpSession session){
        Map map = new HashMap();
        BaseUser baseUser = (BaseUser) session.getAttribute("baseUser");
        Integer compid = baseUser.getCompid();
        List<BaseFlow> flows = baseFlowService.findByCompid(compid);
//        列属性columns
        String[] flowArr = new String[flows.size()+1];
        flowArr[0]="月份";
        for (int i = 0; i <flows.size() ; i++) {
            flowArr[i+1]=flows.get(i).getFlowname();
        }
//        行属性rows
        List<Map> rows = produceReportService.selectFlowAmount(flows,year);
        map.put("columns",flowArr);
        map.put("rows",rows);
        return  map;
    }

    @RequestMapping("/devTypeAmount")
    public Object devTypeAmount(String year){
        Map map = new HashMap();
        List<BaseDevtype> detypes = baseDevtypeService.findAll();


        String[] columns = new String[detypes.size()+1];
        columns[0]="月份";
        for (int i = 0; i < detypes.size(); i++) {
            columns[i+1] = detypes.get(i).getTypename();
        }
        List<Map> rows = produceReportService.selectDevtypeAmount(detypes,year);

        map.put("columns",columns);
        map.put("rows",rows);
        return  map;
}

    @RequestMapping("/devAmount")
    public Object devAmount(String year, HttpSession session){
        Map map = new HashMap();
        BaseUser baseUser = (BaseUser) session.getAttribute("baseUser");
        Integer compid = baseUser.getCompid();
        List<BaseDevice> BaseDevices = baseDeviceService.findByCompid(compid);
//        列属性columns
        String[] columns = new String[BaseDevices.size()+1];
        columns[0]="月份";
        for (int i = 0; i <BaseDevices.size() ; i++) {
            columns[i+1]=BaseDevices.get(i).getDevname();
        }
//        行属性rows
        List<Map> rows = produceReportService.selectDevAmount(BaseDevices,year);
        map.put("columns",columns);
        map.put("rows",rows);
        return  map;
    }



}
