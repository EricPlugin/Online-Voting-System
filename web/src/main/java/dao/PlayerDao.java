package dao;

import bean.Player;

import java.util.List;

public interface PlayerDao {
    int insertPlayer(Player player);
    List<Player> doSelectPlayerByMatchId(int match_id);
    Player doSelectPlayerByPlayerId(int player_id);
    Player doSelectLastPlayer();
}
