package controller;

import bean.Confrontation;
import bean.ConfrontationCnd;
import bean.Match;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.ConfrontationService;

import java.util.List;

@Controller
public class ConfrontationController {
    @Autowired
    private ConfrontationService confrontationService;

    @RequestMapping("/insert_confrontation")
    @ResponseBody
    public boolean insert_confrontation(Confrontation confrontation){
        return confrontationService.insertConfrontation(confrontation);
    }

    @RequestMapping("/confrontation_getAll")
    @ResponseBody
    public List<Confrontation> confrontation_getAll(){
        return confrontationService.getAllConfrontation();
    }


    @RequestMapping("/confrontationCnd_getAll")
    @ResponseBody
    public List<ConfrontationCnd> confrontationCnd_getAll(){
        return confrontationService.getConfrontationCnd();
    }
    @RequestMapping("/confrontation_release")
    @ResponseBody
    public boolean  confrontation_release(int confrontation_id){
        return confrontationService.updateState(confrontation_id);
    }

    @RequestMapping("/confrontation_getAllByState")
    @ResponseBody
    public ConfrontationCnd confrontation_getAllByState(){
        /*try {
            Thread.sleep(5000);
        }catch (Exception e){

        }*/
        return confrontationService.getAllConfrontationByState();
    }

    @RequestMapping("/add_player_1_vote")
    @ResponseBody
    public boolean  add_player_1_vote(int confrontation_id){
        //System.out.println(confrontation_id);
        return confrontationService.addVoteForPlayer_1(confrontation_id);
    }
    @RequestMapping("/add_player_2_vote")
    @ResponseBody
    public boolean  add_player_2_vote(int confrontation_id){
        //System.out.println(confrontation_id);
        return confrontationService.addVoteForPlayer_2(confrontation_id);
    }
}
