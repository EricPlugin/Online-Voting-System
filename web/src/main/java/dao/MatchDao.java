package dao;

import bean.Match;

import java.util.List;

public interface MatchDao {
    int insertMatch(Match match);
    List<Match> getAllMatch();
    int deleteMatchById(int match_id);
    Match selectMatchById(int match_id);
    int updateMatch_now(int match_id);
    Match checkMatch_now(int match_id);
}
