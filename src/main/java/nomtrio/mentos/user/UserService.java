package nomtrio.mentos.user;

public interface UserService {

    void register(UserVO user);
    UserVO findByUsername(String username);
}
