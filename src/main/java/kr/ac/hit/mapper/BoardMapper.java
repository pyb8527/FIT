package kr.ac.hit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.session.RowBounds;

import kr.ac.hit.beans.ContentBean;

public interface BoardMapper {
	@SelectKey( statement = "select content_seq.nextval from dual", 
				keyProperty = "content_idx",
				before = true,
				resultType = int.class)
	@Insert("insert into content_table(content_idx, content_contest, user_age, content_board_idx, content_kategori, user_face, content_writer_idx, "
			+ "content_file, content_subject, content_text, "
			+ "content_file2, content_subject2, content_text2, "
			+ "content_file3, content_subject3, content_text3, "
			+ "content_file4, content_subject4, content_text4, "
			+ "license_date, license_name, license_organ,license_date2, license_name2, license_organ2, "
			+ "license_date3, license_name3, license_organ3, license_date4, license_name4, license_organ4, "
			+ "eduSt_date, eduEnd_date, edu_organ, detail_edu, "
			+ "eduSt_date2, eduEnd_date2, edu_organ2, detail_edu2, "
			+ "eduSt_date3, eduEnd_date3, edu_organ3, detail_edu3, "
			+ "eduSt_date4, eduEnd_date4, edu_organ4, detail_edu4, "
			+ "careerSt_date, careerEnd_date, company, duty, "
			+ "careerSt_date2, careerEnd_date2, company2, duty2, "
			+ "careerSt_date3, careerEnd_date3, company3, duty3, "
			+ "careerSt_date4, careerEnd_date4, company4, duty4, "
			+ "award_organ, award_record, award_organ2, award_record2, "
			+ "award_organ3, award_record3, award_organ4, award_record4, "
			+ "skill_nm, skill_stat,skill_nm2, skill_stat2,skill_nm3, skill_stat3,skill_nm4, skill_stat4) " +
			"values (#{content_idx},#{content_contest},  #{user_age}, #{content_board_idx}, #{content_kategori}, #{user_face}, #{content_writer_idx}, "
			+ "#{content_file}, #{content_subject},  #{content_text}, "
			+ "#{content_file2}, #{content_subject2},  #{content_text2}, "
			+ "#{content_file3}, #{content_subject3},  #{content_text3}, "
			+ "#{content_file4}, #{content_subject4},  #{content_text4}, "
			+ "#{license_date}, #{license_name}, #{license_organ}, "
			+ "#{license_date2}, #{license_name2}, #{license_organ2}, "
			+ "#{license_date3}, #{license_name3}, #{license_organ3}, "
			+ "#{license_date4}, #{license_name4}, #{license_organ4}, "
			+ "#{eduSt_date}, #{eduEnd_date}, #{edu_organ}, #{detail_edu}, "
			+ "#{eduSt_date2}, #{eduEnd_date2}, #{edu_organ2}, #{detail_edu2}, "
			+ "#{eduSt_date3}, #{eduEnd_date3}, #{edu_organ3}, #{detail_edu3}, "
			+ "#{eduSt_date4}, #{eduEnd_date4}, #{edu_organ4}, #{detail_edu4}, "
			+ "#{careerSt_date}, #{careerEnd_date}, #{company}, #{duty}, "
			+ "#{careerSt_date2}, #{careerEnd_date2}, #{company2}, #{duty2}, "
			+ "#{careerSt_date3}, #{careerEnd_date3}, #{company3}, #{duty3}, "
			+ "#{careerSt_date4}, #{careerEnd_date4}, #{company4}, #{duty4}, "
			+ "#{award_organ}, #{award_record}, #{award_organ2}, #{award_record2}, "
			+ "#{award_organ3}, #{award_record3}, #{award_organ4}, #{award_record4}, "
			+ "#{skill_nm}, #{skill_stat}, #{skill_nm2}, #{skill_stat2}, #{skill_nm3}, #{skill_stat3}, #{skill_nm4}, #{skill_stat4})")
	void addContentInfo(ContentBean writeContentBean);
	@Select("select board_info_name " + 
			"from board_info_table " + 
			"where board_info_idx = #{board_info_idx}")
	String getBoardInfoName(int board_info_idx);
	
	@Select("SELECT a1.content_idx, a1.content_contest, a2.user_name as content_writer_name, a1.content_file, a1.content_file2, a1.content_file3, a1.content_file4, "			
			+ "(select kategori_nm from kategori_table where kategori_no = a1.content_kategori)as content_kategori "
			+ "FROM content_table a1, user_table a2 "
			+ "where a1.content_writer_idx = a2.user_idx "
			+ "and a1.content_board_idx = #{board_info_idx} "
			+ "order by a1.content_idx desc")
	List<ContentBean> getContentList(int board_info_idx, RowBounds rowBounds);
	
	@Select("SELECT a1.user_face, to_char(a1.user_age, 'YYYY-MM-DD') as user_age, a1.careerst_date, a1.careerend_date, a1.company, a1.content_contest, a1.content_idx, a1.content_subject, a1.content_subject2, a2.user_name as content_writer_name, "
			+ "        to_char(a1.content_date, 'YYYY-MM-DD') as content_date,"
			+ " to_char(a1.content_date,'HH24:MI:SS') as content_time, a1.content_kategori, a1.content_file, a1.content_file2, "
			+ " a1.content_file3, a1.content_file4, a1.content_text, a1.content_text2 "
			+ "FROM content_table a1, user_table a2 "
			+ "where a1.content_writer_idx = a2.user_idx "
			+ "and a1.content_kategori= #{info_idx} "
			+ "order by a1.content_idx desc")
	List<ContentBean> getInfoContentList(int board_info_idx);
	
	@Select("select "
			+ "a.content_idx, a.content_contest, "
			+ "a.content_file, a.content_subject, a.content_text, "
			+ "a.content_file2, a.content_subject2, a.content_text2, "
			+ "a.content_file3, a.content_subject3, a.content_text3, "
			+ "a.content_file4, a.content_subject4, a.content_text4, "
			+ "a.content_board_idx, to_char(a.user_age, 'YYYY-MM-DD') AS user_age, a.content_kategori, (select kategori_nm from kategori_table where kategori_no = a.content_kategori) as content_kategori_nm, a.user_face, a.content_writer_idx, "
			+ "to_char(a.license_date, 'YYYY-MM-DD') as license_date, a.license_name, a.license_organ, "
			+ "to_char(a.license_date2, 'YYYY-MM-DD') as license_date2, a.license_name2, a.license_organ2, "
			+ "to_char(a.license_date3, 'YYYY-MM-DD') as license_date3, a.license_name3, a.license_organ3, "
			+ "to_char(a.license_date4, 'YYYY-MM-DD') as license_date4, a.license_name4, a.license_organ4, "
			+ "to_char(a.eduSt_date, 'YYYY-MM-DD') as eduSt_date, to_char(a.eduEnd_date, 'YYYY-MM-DD') as eduEnd_date, a.edu_organ, a.detail_edu, "
			+ "to_char(a.eduSt_date2, 'YYYY-MM-DD') as eduSt_date2, to_char(a.eduEnd_date2, 'YYYY-MM-DD') as eduEnd_date2, a.edu_organ2, a.detail_edu2, "
			+ "to_char(a.eduSt_date3, 'YYYY-MM-DD') as eduSt_date3, to_char(a.eduEnd_date3, 'YYYY-MM-DD') as eduEnd_date3, a.edu_organ3, a.detail_edu3, "
			+ "to_char(a.eduSt_date4, 'YYYY-MM-DD') as eduSt_date4, to_char(a.eduEnd_date4, 'YYYY-MM-DD') as eduEnd_date4, a.edu_organ4, a.detail_edu4, "
			+ "to_char(a.careerSt_date, 'YYYY-MM-DD') as careerSt_date, to_char(a.careerEnd_date, 'YYYY-MM-DD') as careerEnd_date, a.company, a.duty, "
			+ "to_char(a.careerSt_date2, 'YYYY-MM-DD') as careerSt_date2, to_char(a.careerEnd_date2, 'YYYY-MM-DD') as careerEnd_date2, a.company2, a.duty2, "
			+ "to_char(a.careerSt_date3, 'YYYY-MM-DD') as careerSt_date3, to_char(a.careerEnd_date3, 'YYYY-MM-DD') as careerEnd_date3, a.company3, a.duty3, "
			+ "to_char(a.careerSt_date4, 'YYYY-MM-DD') as careerSt_date4, to_char(a.careerEnd_date4, 'YYYY-MM-DD') as careerEnd_date4, a.company4, a.duty4, "
			+ "award_organ, award_record, award_organ2, award_record2, "
			+ "award_organ3, award_record3, award_organ4, award_record4, "
			+ "skill_nm, skill_stat,skill_nm2, skill_stat2,skill_nm3, skill_stat3,skill_nm4, skill_stat4, "
			+ " b.user_name, b.user_email, b.user_phone "
			+ "from content_table a, user_table b "
			+ "where a.content_idx = #{content_idx} "
			+ "and a.content_writer_idx = b.user_idx")
	ContentBean getContentInfo(int content_idx);
	
	@Update("update content_table set user_age = #{user_age}, content_contest = #{content_contest}, "
			+ "content_file = #{content_file}, content_subject = #{content_subject}, content_text = #{content_text}, "
			+ "content_file2 = #{content_file2}, content_subject2 = #{content_subject2}, content_text2 = #{content_text2}, "
			+ "content_file3 = #{content_file3}, content_subject3 = #{content_subject3}, content_text3 = #{content_text3}, "
			+ "content_file4 = #{content_file4}, content_subject4 = #{content_subject4}, content_text4 = #{content_text4}, "
			+ "license_date = #{license_date}, license_name = #{license_name}, license_organ = #{license_organ}, "
			+ "license_date2 = #{license_date2}, license_name2 = #{license_name2}, license_organ2 = #{license_organ2}, "
			+ "license_date3 = #{license_date3}, license_name3 = #{license_name3}, license_organ3 = #{license_organ3}, "
			+ "license_date4 = #{license_date4}, license_name4 = #{license_name4}, license_organ4 = #{license_organ4}, "
			+ "eduSt_date = #{eduSt_date}, eduEnd_date = #{eduEnd_date}, edu_organ = #{edu_organ}, detail_edu = #{detail_edu}, "
			+ "eduSt_date2 = #{eduSt_date2}, eduEnd_date2 = #{eduEnd_date2}, edu_organ2 = #{edu_organ2}, detail_edu2 = #{detail_edu2}, "
			+ "eduSt_date3 = #{eduSt_date3}, eduEnd_date3 = #{eduEnd_date3}, edu_organ3 = #{edu_organ3}, detail_edu3 = #{detail_edu3}, "
			+ "eduSt_date4 = #{eduSt_date4}, eduEnd_date4 = #{eduEnd_date4}, edu_organ4 = #{edu_organ4}, detail_edu4 = #{detail_edu4}, "
			+ "careerSt_date = #{careerSt_date}, careerEnd_date = #{careerEnd_date}, company = #{company}, duty = #{duty}, "
			+ "careerSt_date2 = #{careerSt_date2}, careerEnd_date2 = #{careerEnd_date2}, company2 = #{company2}, duty2 = #{duty2}, "
			+ "careerSt_date3 = #{careerSt_date3}, careerEnd_date3 = #{careerEnd_date3}, company3 = #{company3}, duty3 = #{duty3}, "
			+ "careerSt_date4 = #{careerSt_date4}, careerEnd_date4 = #{careerEnd_date4}, company4 = #{company4}, duty4 = #{duty4}, "
			+ "award_organ = #{award_organ}, award_record = #{award_record}, award_organ2 = #{award_organ2}, award_record2 = #{award_record2}, "
			+ "award_organ3 = #{award_organ3}, award_record3 = #{award_record3}, award_organ4 = #{award_organ4}, award_record4 = #{award_record4}, "
			+ "skill_nm = #{skill_nm}, skill_stat = #{skill_stat}, skill_nm2 = #{skill_nm2}, skill_stat2 = #{skill_stat2}, "
			+ "skill_nm3 = #{skill_nm3}, skill_stat3 = #{skill_stat3}, skill_nm4 = #{skill_nm4}, skill_stat4 = #{skill_stat4} "
			+ "WHERE content_idx = #{content_idx}")
	void modifyContentInfo(ContentBean modifyContentBean);
	
	@Delete("DELETE FROM content_table WHERE content_idx = #{content_idx}")
	void deleteContentInfo(int content_idx);
	@Select("SELECT COUNT(*) FROM content_table WHERE content_board_idx = #{content_board_idx}")
	int getContentCount(int content_board_idx);
	
	
	/*Community Kategori List*/
	@Select("SELECT KATEGORI_NO AS kategoriNo, KATEGORI_NM AS kategoriNm FROM KATEGORI_TABLE order by KATEGORI_NO asc")
	List<ContentBean> getBoardKategori(ContentBean vo);
	
	@Select("SELECT CONTENT_IDX, CONTENT_WRITER_IDX, CONTENT_BOARD_IDX "
			+ "FROM CONTENT_TABLE "
			+ "WHERE CONTENT_WRITER_IDX = #{user_idx}")
	ContentBean getBoardYn(ContentBean vo);
	
	@Select("select a.content_file, a.content_file2, a.content_file3, a.content_file4 "
			+ "from content_table a, user_table b "
			+ "where a.content_writer_idx = b.user_idx "
			+ "and b.user_idx = #{user_idx}")
	ContentBean getContentFile(ContentBean vo);
}
