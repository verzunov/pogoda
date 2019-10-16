package system.Service;

import system.Model.User;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

//    @Autowired
//    private UserDao userDao;


    public User getUser(String login){
        User user = new User();
        user.setName(login);
        user.setPassword("7110eda4d09e062aa5e4a390b0a572ac0d2c0220");
        return user;
    }

//    public List<User> getAllUsers(){
//        return userDao.getAllUsers();
//    }

}
