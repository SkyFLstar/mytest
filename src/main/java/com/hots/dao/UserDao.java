package com.hots.dao;

import com.hots.privateclass.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/*
 */
public interface UserDao {
//User接口容器,获取来自前端的提交数据
    User login(@Param("u_email") String u_email, @Param("u_password") String u_password);
    boolean signin(User u);
    boolean update(User user);
    boolean delete(User user);
//    List<User> selectByEmail(@Param("u_email") String u_email);
}
