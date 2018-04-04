package com.hots.service;

import com.hots.dao.UserDao;
import com.hots.privateclass.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class UserService {

    @Resource
    @Autowired
    private UserDao userDao;

    public UserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public User login(String u_email, String u_password){
        return userDao.login(u_email, u_password);
    }

    public boolean signin(User user){ return userDao.signin(user);}

    public boolean update(User user){ return userDao.update(user);}

    public boolean delete(User user){return userDao.delete(user);}

//    public List<User>selectByEmail(String u_email){return userDao.selectByEmail(u_email);}

}
