package nomtrio.mentos.user;

import org.apache.catalina.User;
import org.springframework.stereotype.Service;

import java.util.List;


public interface UserService {

    List<User> getAllUsers();
    void createUser(UserVO user);
}
