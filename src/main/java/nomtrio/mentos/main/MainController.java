package nomtrio.mentos.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/")
@Controller
public class MainController {
    @GetMapping("/home")
    public String home() {
        return "/home";
    }
}
