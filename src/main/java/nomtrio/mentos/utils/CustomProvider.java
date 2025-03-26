package nomtrio.mentos.utils;


import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class CustomProvider implements AuthenticationProvider {

    private final SecurityService securityService;
    private final PasswordEncoder passwordEncoder;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String username = authentication.getName(); //USERNAME
        String password = authentication.getCredentials().toString(); //PWD

        UserDetails userDetails = securityService.loadUserByUsername(username); // db에서 유저정보 조회

        if(!password.equals(userDetails.getPassword())) { // 사용자가 입력한 pwd와 db의 pwd가 일치하지 않으면
            throw new BadCredentialsException("비밀번호가 일치하지 않습니다");
        }

        return new UsernamePasswordAuthenticationToken(userDetails, password, userDetails.getAuthorities());

    }

    @Override
    public boolean supports(Class<?> authentication) {
        return false;
    }
}
