package kr.ac.hit.service;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hit.beans.UserBean;
import kr.ac.hit.dao.UserDao;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	public boolean checkuserIdExist(String user_id) {
		String user_name = userDao.checkUserIdExist(user_id);
		if(user_name == null) {
			return true;
		} else {
			return false;
		}
	}
	
	public void addUserInfo(UserBean joinUserBean) {
		userDao.addUserInfo(joinUserBean);
	}
	
	public void getLoginUserInfo(UserBean tempLoginUserBean) {
		UserBean tempLUB = userDao.getLoginUserInfo(tempLoginUserBean);
		if(tempLUB != null) {
			loginUserBean.setUser_idx(tempLUB.getUser_idx());
			loginUserBean.setUser_name(tempLUB.getUser_name());
			loginUserBean.setUserLogin(true);
		}
	}
	public void getModifyUserInfo(UserBean modifyUserBean) {
		UserBean tempMUI = userDao.getModifyUserInfo(loginUserBean.getUser_idx());
		
		modifyUserBean.setUser_id(tempMUI.getUser_id());
		modifyUserBean.setUser_name(tempMUI.getUser_name());
		modifyUserBean.setUser_age(tempMUI.getUser_age());
		modifyUserBean.setUser_phone(tempMUI.getUser_phone());
		modifyUserBean.setUser_email(tempMUI.getUser_email());
		modifyUserBean.setUser_idx(loginUserBean.getUser_idx());
	}
	public UserBean getUserInfo(UserBean modifyUserBean) {
		UserBean tempMUI = userDao.getModifyUserInfo(loginUserBean.getUser_idx());
		
		modifyUserBean.setUser_id(tempMUI.getUser_id());
		modifyUserBean.setUser_name(tempMUI.getUser_name());
		modifyUserBean.setUser_age(tempMUI.getUser_age());
		modifyUserBean.setUser_phone(tempMUI.getUser_phone());
		modifyUserBean.setUser_email(tempMUI.getUser_email());
		modifyUserBean.setUser_idx(loginUserBean.getUser_idx());
		
		return modifyUserBean;
	}

	public void modifyUserInfo(@Valid UserBean modifyUserBean) {
		// TODO Auto-generated method stub
		modifyUserBean.setUser_idx(loginUserBean.getUser_idx());
		userDao.modifyUserInfo(modifyUserBean);
	}

}








