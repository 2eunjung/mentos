package nomtrio.mentos.user;

import lombok.RequiredArgsConstructor;
import org.apache.catalina.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService{

    private final UserDao userDao;

    @Override
    public List<User> getAllUsers() {
        return List.of();
    }

    @Override
    public void createUser(UserVO user) {
        userDao.register(user);
    }
}
