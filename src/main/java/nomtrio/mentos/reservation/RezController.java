package nomtrio.mentos.reservation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@RequestMapping("")
@Controller
public class RezController {

    private RezService rezService;

    @GetMapping("/reservation/main")
    public String rezMain() {
        return "reservation/main";
    }

    @GetMapping("/modal-mento-list")
    @ResponseBody
    public Mento mentoList(@RequestParam("no") int no) {
        Mento mento = rezService.getMentoList(no);

        return mento;
    }

//    @PostMapping("/")
}
