package controller;

import bean.Match;
import bean.Player;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.MatchService;
import service.PlayerService;

import java.util.List;

@Controller
public class PlayerController {
    @Autowired
    private PlayerService playerService;
    @Autowired
    private MatchService matchService;
    @RequestMapping("/player_register")
    @ResponseBody
    public boolean player_register(Player player){
        if(matchService.checkMatch_now(player.getMatch_id())&&matchService.updateMatch_now(player.getMatch_id())==true){
            return  playerService.insertPlayer(player);
        }else {
            return  false;
        }

    }
    @RequestMapping("/player_select_byMatch_id")
    @ResponseBody
    public List<Player> player_select_byMatch_id(int match_id){
        return  playerService.doSelectPlayerByMatchId(match_id);
    }
    @RequestMapping("/player_select_byPlayer_id")
    @ResponseBody
    public Player player_select_byPlayer_id(int player_id){
        return  playerService.doSelectPlayerByPlayerId(player_id);
    }
}
