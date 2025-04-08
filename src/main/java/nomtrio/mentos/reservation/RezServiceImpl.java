package nomtrio.mentos.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RezServiceImpl implements RezService {

    private RezService rezService;
    private RezDAO rezDAO;

    @Autowired
    public RezServiceImpl(RezService rezService) {
        this.rezService = rezService;
    }
    public RezServiceImpl(RezDAO rezDAO) {
        this.rezDAO = rezDAO;
    }

    @Override
    public List<Mento> getMentoList() {

        List<Mento> mentos = rezDAO.getMentoLists();

        System.out.println("==================================" + mentos);

        return mentos;
    }
}
