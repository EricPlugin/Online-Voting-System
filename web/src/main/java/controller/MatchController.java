package controller;

import bean.Match;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.MatchService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class MatchController {
    @Autowired
    private MatchService matchService;

    @RequestMapping("/match_submit")
    @ResponseBody
    public boolean match_submit(Match match){
        return  matchService.insertMatch(match);
    }
    @RequestMapping("/match_getAll")
    @ResponseBody
    public List<Match> match_getAll(){
        return  matchService.getAllMatch();
    }
    @RequestMapping("/match_delete")
    @ResponseBody
    public boolean match_delete(int match_id){
        return  matchService.deleteMatchById(match_id);
    }
    @RequestMapping("/confrontation_getOneById")
    @ResponseBody
    public Match confrontation_getOneById(int match_id){
        return matchService.selectMatchById(match_id);
    }
}
