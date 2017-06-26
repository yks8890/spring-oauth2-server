package cn.mengcms.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author zp
 */
@Controller
@RequestMapping("/user/")
public class UserController {


//    @Autowired
//    private UserService userService;

    /**
     * Just forward to page
     *
     * @return View page
     */
    @RequestMapping("overview.do")
    public String overview() {
        return "user/user_overview";
    }


}