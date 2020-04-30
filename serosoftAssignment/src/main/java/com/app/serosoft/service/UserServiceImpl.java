package com.app.serosoft.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.serosoft.dao.UserDAO;
import com.app.serosoft.hib.entity.User;



@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Override
	@Transactional
	public int add(User p){
		return userDAO.add(p);
	}

	@Override
	@Transactional
	public void update(User p){
		userDAO.update(p);
	}

	@Override
	@Transactional
	public List<User> list() {
		return userDAO.list();
	}

	@Override
	@Transactional
	public User getById(int id) {
		return userDAO.getById(id);
	}

	@Override
	@Transactional
	public User remove(int id) {
		return userDAO.remove(id);
	}

}
