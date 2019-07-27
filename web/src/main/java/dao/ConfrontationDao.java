package dao;

import bean.Confrontation;
import bean.ConfrontationCnd;

import java.util.List;

public interface ConfrontationDao {
    int insertConfrontation(Confrontation confrontation);
    List<Confrontation> getAllConfrontation();
    List<ConfrontationCnd> getConfrontationCnd();
    int updateState(int confrontation_id);
    int RE_updateState();
    ConfrontationCnd getAllConfrontationByState();
    int addVoteForPlayer_1(int confrontation_id);
    int addVoteForPlayer_2(int confrontation_id);

}
