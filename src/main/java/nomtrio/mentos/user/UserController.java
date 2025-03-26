package nomtrio.mentos.user;

import lombok.RequiredArgsConstructor;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@RequiredArgsConstructor
@Controller
public class UserController {

    private final UserService userService;
    private final BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();

    @GetMapping("/login")
    public String login() {
        return "user/login";
    }

    @GetMapping("/register")
    public String register() {
        return "user/register";
    }

    @GetMapping("/logout")
    public String logout() {
        return "home";
    }

    @PostMapping("/register")
    public void register(@ModelAttribute UserVO user) {
        user.setMember_pw(bCryptPasswordEncoder.encode(user.getMember_pw()));
        userService.register(user);
    }

    @GetMapping("/join")
    public String join() {
        return "join";
    }
}
