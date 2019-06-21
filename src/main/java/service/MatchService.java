package service;

import bean.Match;
import dao.MatchDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MatchService {
    @Autowired
    private MatchDao matchDao;
    //添加比赛
    public boolean insertMatch(Match match){
        int result = matchDao.insertMatch(match);
        if (result == 1){
            return true;
        }else {
            return false;
        }
    }
    //获得全部比赛信息
    public List<Match> getAllMatch(){
        return matchDao.getAllMatch();
    }
    //根据id删除比赛
    public Boolean deleteMatchById(int match_id){
        int result = matchDao.deleteMatchById(match_id);
        if (result == 1){
            return true;
        }else {
            return false;
        }
    }
}
