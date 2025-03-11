package nomtrio.mentos.user;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@RequiredArgsConstructor
@RequestMapping("/user")
@Controller
public class UserController {

    private final UserService userService;

    @GetMapping("/login")
    public String login() {
        return "user/login";
    }

    @GetMapping("/test")
    public String test() {
        return "user/test";
    }

    @PostMapping("register")
    public void register(@RequestParam String username, @RequestParam String email) {
        UserVO userVO = new UserVO();
        userVO.setUsername(username);
        userVO.setEmail(email);
        userService.createUser(userVO);
    }


}
