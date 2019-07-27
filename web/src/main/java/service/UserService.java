package service;

import bean.User;
import dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserDao userDao;
    //判断用户是否登陆成功
    public User execute(String username,String password){
        User user=new User();
        user.setUsername(username);
        user.setPassword(password);
        User u=userDao.getUser(user);
        return u;
    }
    //判断用户是否存在
    public boolean isExitByUsername(String username){
        String user_check = userDao.doSelectUsername(username);
        if (user_check==null){
            return true;
        }else {
            return false;
        }
    }
    //插入新用户
    public int insertUser(User user){
        return userDao.insertUser(user);
    }
    public List<User> getAllUsers(){
        return userDao.getAllUsers();
    }
    //重置密码
    public boolean resetPassword(String username){
        int result = userDao.resetPassword(username);
        if (result == 1){
            return true;
        }else {
            return false;
        }
    }
    //注销用户
    public boolean deleteUser(String username){
        int result = userDao.deleteUser(username);
        if (result == 1){
            return true;
        }else {
            return false;
        }
    }
}
