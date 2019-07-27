package service;

import bean.Player;
import dao.PlayerDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class PlayerService {
    @Autowired
    private PlayerDao playerDao;
    public boolean insertPlayer(Player player){
        int result = playerDao.insertPlayer(player);
        if (result == 1){
            return true;
        }else {
            return false;
        }
    }

    public List<Player> doSelectPlayerByMatchId(int match_id){
        return playerDao.doSelectPlayerByMatchId(match_id);
    }
    public Player doSelectPlayerByPlayerId(int player_id){
        return playerDao.doSelectPlayerByPlayerId(player_id);
    }
    public Player doSelectLastPlayer(){
        return playerDao.doSelectLastPlayer();
    }
}
