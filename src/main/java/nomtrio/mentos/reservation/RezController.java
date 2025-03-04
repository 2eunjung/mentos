package nomtrio.mentos.reservation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/reservation")
@Controller
public class RezController {
    @GetMapping("/main")
    public String rezMain() {
        return "reservation/main";
    }
}
