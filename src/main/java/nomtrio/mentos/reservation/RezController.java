package nomtrio.mentos.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("")
@Controller
public class RezController {


    private final RezService rezService;

    public RezController(RezService rezService) {
        this.rezService = rezService;
    }

    @GetMapping("/reservation/main")
    public String rezMain() {
        return "reservation/main";
    }

    @GetMapping("/modal-mento-list")
    @ResponseBody
    public List<Mento> mentoList() {
        System.out.println("-----------------------------------------------");
        List<Mento> mentos = rezService.getMentoList();

        System.out.println("-----------------------------------------------" + mentos);

        return mentos;
    }

}
