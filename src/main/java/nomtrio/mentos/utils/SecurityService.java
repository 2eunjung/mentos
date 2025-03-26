package nomtrio.mentos.utils;

import lombok.RequiredArgsConstructor;
import nomtrio.mentos.user.UserDao;
import nomtrio.mentos.user.UserVO;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class SecurityService implements UserDetailsService {

    private final UserDao userDao;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        UserVO userVo = userDao.findByUsername(username);

        if(userVo == null){
            throw new UsernameNotFoundException("사용자를 찾을 수 없습니다 :" + username);
        }

        return User.builder()
                .username(userVo.getMember_nm())
                .password(userVo.getMember_pw())
                .roles(userVo.getMember_auth())
                .build();

    }
}
