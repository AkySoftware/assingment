package com.app.serosoft.service;

import java.util.List;

import com.app.serosoft.hib.entity.User;




public interface UserService {

	public int add(User p);

	public void update(User p);

	public List<User> list();

	public User getById(int id);

	public User remove(int id);

}
