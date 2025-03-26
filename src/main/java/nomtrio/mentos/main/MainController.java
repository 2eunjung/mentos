package nomtrio.mentos.main;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/")
@Controller
public class MainController {
    @GetMapping("/home")
    public String home(Model model) {
        // 현재 인증된 사용자 정보 가져오기
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (authentication != null && authentication.isAuthenticated()) {
            Object principal = authentication.getPrincipal();

            // principal이 User 객체로 변환 가능하다면
            if (principal instanceof User) {
                User user = (User) principal;
                String username = user.getUsername();
                model.addAttribute("username", username);  // 화면에 사용자 이름을 전달
            }
        }

        return "home";  // 홈 페이지로 리턴
    }
}
