package service;

import bean.Confrontation;
import bean.ConfrontationCnd;
import dao.ConfrontationDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ConfrontationService {
    @Autowired
    private ConfrontationDao confrontationDao;

    public boolean insertConfrontation(Confrontation confrontation){
        int result = confrontationDao.insertConfrontation(confrontation);
        if (result == 1){
            return true;
        }else {
            return false;
        }
    }
    public List<Confrontation> getAllConfrontation(){
        return confrontationDao.getAllConfrontation();
    }
    public List<ConfrontationCnd> getConfrontationCnd(){
        return confrontationDao.getConfrontationCnd();
    }
    public boolean updateState(int confrontation_id){
        confrontationDao.RE_updateState();
        int result = confrontationDao.updateState(confrontation_id);
        if (result == 1){
            return true;
        }else {
            return false;
        }
    }

    public ConfrontationCnd getAllConfrontationByState(){
        return confrontationDao.getAllConfrontationByState();
    }
    public boolean addVoteForPlayer_1(int confrontation_id){
        int result = confrontationDao.addVoteForPlayer_1(confrontation_id);
        if (result == 1){
            return true;
        }else {
            return false;
        }
    }
    public boolean addVoteForPlayer_2(int confrontation_id){
        int result = confrontationDao.addVoteForPlayer_2(confrontation_id);
        if (result == 1){
            return true;
        }else {
            return false;
        }
    }

}
