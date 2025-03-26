package nomtrio.mentos.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDao {
    void register(UserVO user);
    UserVO findByUsername(String username);
}
