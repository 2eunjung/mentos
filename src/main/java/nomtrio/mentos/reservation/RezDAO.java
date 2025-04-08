package nomtrio.mentos.reservation;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface RezDAO {

    List<Mento> getMentoLists();
}
