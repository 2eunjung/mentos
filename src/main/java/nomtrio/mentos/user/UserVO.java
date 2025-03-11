package nomtrio.mentos.user;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class UserVO {
    private Integer id;
    private String username;
    private String email;
    private String createdAt;
}
