package nomtrio.mentos.user;

import org.apache.catalina.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserDao {
    User findById(@Param("id") Integer id);
    List<User> findAll();
    void register(UserVO user);
}
