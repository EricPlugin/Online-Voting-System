package dao;

import bean.User;

import java.util.List;

public interface UserDao {
    User getUser(User user);
    String doSelectUsername(String username);
    int insertUser(User user);
    List<User> getAllUsers();
    int resetPassword(String username);
    int deleteUser(String username);
}
