package cn.mengcms.web.controller.mobile;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author zp
 */
@Controller
@RequestMapping("/m/")
public class MobileController {


    @RequestMapping("dashboard.do")
    public String dashboard() {
        return "mobile/dashboard";
    }

}