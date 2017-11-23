package com.nisum.service;
import com.nisum.pojo.User;

public interface GoogleSignInService {
	
	public String callTokenAPI(String code);

	public User callUserInfoAPI(String httpResponse);

	public void testProperties();

}
