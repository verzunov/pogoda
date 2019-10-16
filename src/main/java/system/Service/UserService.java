package system.Service;

import system.Model.User;

public interface UserService {

    User getUser(String login);
    //public List<User> getAllUsers();
}
