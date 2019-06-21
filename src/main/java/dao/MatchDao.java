package dao;

import bean.Match;

import java.util.List;

public interface MatchDao {
    int insertMatch(Match match);
    List<Match> getAllMatch();
    int deleteMatchById(int match_id);
}
