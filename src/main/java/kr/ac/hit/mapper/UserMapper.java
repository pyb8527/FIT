package kr.ac.hit.mapper;

import javax.validation.Valid;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.ac.hit.beans.UserBean;

public interface UserMapper {
	@Select("select user_name "
			+ "from user_table "
			+ "WHERE user_id = #{user_id}")
	String checkUserIdExist(String user_id);
	
	@Insert("insert into user_table (user_idx, user_name, user_id, user_pw, USER_PHONE, USER_EMAIL, USER_AGE) "
			+ "values (user_seq.nextval, #{user_name},#{user_id},#{user_pw},#{user_phone},#{user_email},#{user_age})")
	void addUserInfo(UserBean joinUserBean);
	
	@Select("SELECT user_idx,user_pw "
			+ "FROM user_table "
			+ "WHERE user_id=#{user_id} "
			+ "AND user_pw=#{user_pw}")
	UserBean getLoginUserInfo(UserBean tempLoginUserBean);
	
	@Select("SELECT user_id, user_name, user_email, user_phone, user_age "
			+ "FROM user_table "
			+ "WHERE user_idx=#{user_idx} ")
	UserBean getModifyUserInfo(int user_idx);
	
	@Update("update user_table "
			+ "set user_pw = #{user_pw} "
			+ "where user_idx = #{user_idx}")
	void modifyUserInfo(@Valid UserBean modifyUserBean);

}













