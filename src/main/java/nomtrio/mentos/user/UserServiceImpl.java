package nomtrio.mentos.user;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;


@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService{

    private final UserDao userDao;

    @Override
    public void register(UserVO user) {
        userDao.register(user);
    }

    @Override
    public UserVO findByUsername(String username) {
        UserVO userVo = userDao.findByUsername(username);

        if(userVo == null){
            throw new UsernameNotFoundException("사용자를 찾을 수 없습니다 :" + username);
        }

        return userVo;
    }


}
