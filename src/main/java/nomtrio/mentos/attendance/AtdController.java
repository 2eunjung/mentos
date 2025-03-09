package nomtrio.mentos.attendance;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/atd")
@Controller
public class AtdController {
    @GetMapping("/main")
    public String atdMain() {
        return "/main";
    }
}
