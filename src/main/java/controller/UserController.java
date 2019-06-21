package controller;

import bean.Result;
import bean.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import service.UserService;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("/login_submit")
    @ResponseBody
    public User login_submit(String username, String password){
        User user = userService.execute(username,password);
        if(user == null){
            return null;
        }else {
            return user;
        }
    }
    @RequestMapping("/user_isExit")
    @ResponseBody
    public boolean user_isExit(String username){
        boolean ret = userService.isExitByUsername(username);
        return ret;
    }

    @RequestMapping("/user_insert")
    @ResponseBody
    public int user_insert(User user){
        return userService.insertUser(user);
    }

    @RequestMapping("/user_getAll")
    @ResponseBody
    public List<User> user_getAll(){
        return userService.getAllUsers();
    }
    @RequestMapping("/user_reset")
    @ResponseBody
    public boolean user_reset(String username){
        return userService.resetPassword(username);
    }
    @RequestMapping("/user_delete")
    @ResponseBody
    public boolean user_delete(String username){
        return userService.deleteUser(username);
    }
}
