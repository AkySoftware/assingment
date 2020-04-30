package com.app.serosoft.dao;

import java.util.List;

import com.app.serosoft.hib.entity.User;


public interface UserDAO {

	public int add(User p);

	public void update(User p);

	public List<User> list();

	public User getById(int id);

	public User remove(int id);
}
