package kr.ac.hit.beans;

import org.springframework.web.multipart.MultipartFile;

public class ContentBean extends UserBean{		
		
	private String license_name;
	private String license_date;
	private String license_organ;
	private String license_name2;
	private String license_date2;
	private String license_organ2;
	private String license_name3;
	private String license_date3;
	private String license_organ3;
	private String license_name4;
	private String license_date4;
	private String license_organ4;
	
	private String eduSt_date;
	private String eduEnd_date;
	private String edu_organ;
	private String detail_edu;
	private String eduSt_date2;
	private String eduEnd_date2;
	private String edu_organ2;
	private String detail_edu2;
	private String eduSt_date3;
	private String eduEnd_date3;
	private String edu_organ3;
	private String detail_edu3;
	private String eduSt_date4;
	private String eduEnd_date4;
	private String edu_organ4;
	private String detail_edu4;
	
	private String careerSt_date;
	private String careerEnd_date;
	private String company;
	private String duty;
	private String careerSt_date2;
	private String careerEnd_date2;
	private String company2;
	private String duty2;
	private String careerSt_date3;
	private String careerEnd_date3;
	private String company3;
	private String duty3;
	private String careerSt_date4;
	private String careerEnd_date4;
	private String company4;
	private String duty4;
	
	private String award_organ;
	private String award_record;
	private String award_organ2;
	private String award_record2;
	private String award_organ3;
	private String award_record3;
	private String award_organ4;
	private String award_record4;
	
	private String skill_nm;
	private String skill_stat;
	private String skill_nm2;
	private String skill_stat2;
	private String skill_nm3;
	private String skill_stat3;
	private String skill_nm4;
	private String skill_stat4;
	
	private String user_age;
	public String getUser_age() {
		return user_age;
	}
	public void setUser_age(String user_age) {
		this.user_age = user_age;
	}
	private String st_date;
	
	private String end_date;
	
	public String getSt_date() {
		return st_date;
	}
	public void setSt_date(String st_date) {
		this.st_date = st_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	private int rownum;
	
	private int kategori_no;
	public int getRownum() {
		return rownum;
	}
	public int getKategori_no() {
		return kategori_no;
	}
	public void setKategori_no(int kategori_no) {
		this.kategori_no = kategori_no;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	private int info_idx;
	
	public int getInfo_idx() {
		return info_idx;
	}
	public void setInfo_idx(int info_idx) {
		this.info_idx = info_idx;
	}
	private int content_idx;

	
	private int kategoriNo;
	private String kategoriNm;
	
	public int getKategoriNo() {
		return kategoriNo;
	}
	public void setKategoriNo(int kategoriNo) {
		this.kategoriNo = kategoriNo;
	}
	public String getKategoriNm() {
		return kategoriNm;
	}
	public void setKategoriNm(String kategoriNm) {
		this.kategoriNm = kategoriNm;
	}
	private String content_subject;
	private String content_subject2;
	private String content_subject3;
	private String content_subject4;
	
	private String content_text;
	private String content_text2;
	private String content_text3;
	private String content_text4;
	
	private MultipartFile upload_file;
	private MultipartFile upload_file2;
	private MultipartFile upload_file3;
	private MultipartFile upload_file4;	
	private MultipartFile id_pic;	
	
	private String content_file;
	private String content_file2;
	private String content_file3;
	private String content_file4;
	private String user_face;
	
	private String content_contest;
	private String content_awardType;
	private String content_work_title;
	private String content_work_subject;
	
	public String getContent_contest() {
		return content_contest;
	}
	public void setContent_contest(String content_contest) {
		this.content_contest = content_contest;
	}
	public String getContent_awardType() {
		return content_awardType;
	}
	public void setContent_awardType(String content_awardType) {
		this.content_awardType = content_awardType;
	}
	public String getContent_work_title() {
		return content_work_title;
	}
	public void setContent_work_title(String content_work_title) {
		this.content_work_title = content_work_title;
	}
	public String getContent_work_subject() {
		return content_work_subject;
	}
	public void setContent_work_subject(String content_work_subject) {
		this.content_work_subject = content_work_subject;
	}
	public String getUser_face() {
		return user_face;
	}
	public void setUser_face(String user_face) {
		this.user_face = user_face;
	}
	private int content_writer_idx;
	private int content_board_idx;
	private String content_date;
	private String content_time;
	private String content_writer_name;
	private String content_kategori="";
	private String content_kategori_nm="";
	
	public int getContent_idx() {
		return content_idx;
	}
	public void setContent_idx(int content_idx) {
		this.content_idx = content_idx;
	}
	public String getContent_subject() {
		return content_subject;
	}
	public void setContent_subject(String content_subject) {
		this.content_subject = content_subject;
	}
	public String getContent_text() {
		return content_text;
	}
	public void setContent_text(String content_text) {
		this.content_text = content_text;
	}
	public String getContent_file() {
		return content_file;
	}
	public void setContent_file(String content_file) {
		this.content_file = content_file;
	}
	public String getContent_file2() {
		return content_file2;
	}
	public void setContent_file2(String content_file2) {
		this.content_file2 = content_file2;
	}
	public String getContent_file3() {
		return content_file3;
	}
	public void setContent_file3(String content_file3) {
		this.content_file3 = content_file3;
	}
	public String getContent_file4() {
		return content_file4;
	}
	public void setContent_file4(String content_file4) {
		this.content_file4 = content_file4;
	}
	public int getContent_writer_idx() {
		return content_writer_idx;
	}
	public void setContent_writer_idx(int content_writer_idx) {
		this.content_writer_idx = content_writer_idx;
	}
	public int getContent_board_idx() {
		return content_board_idx;
	}
	public void setContent_board_idx(int content_board_idx) {
		this.content_board_idx = content_board_idx;
	}
	public String getContent_date() {
		return content_date;
	}
	public void setContent_date(String content_date) {
		this.content_date = content_date;
	}
	public MultipartFile getUpload_file() {
		return upload_file;
	}
	public void setUpload_file(MultipartFile upload_file) {
		this.upload_file = upload_file;
	}
	public MultipartFile getId_pic() {
		return id_pic;
	}
	public void setId_pic(MultipartFile id_pic) {
		this.id_pic = id_pic;
	}
	public MultipartFile getUpload_file2() {
		return upload_file2;
	}
	public void setUpload_file2(MultipartFile upload_file2) {
		this.upload_file2 = upload_file2;
	}
	public MultipartFile getUpload_file3() {
		return upload_file3;
	}
	public void setUpload_file3(MultipartFile upload_file3) {
		this.upload_file3 = upload_file3;
	}
	public MultipartFile getUpload_file4() {
		return upload_file4;
	}
	public void setUpload_file4(MultipartFile upload_file4) {
		this.upload_file4 = upload_file4;
	}
	public String getContent_writer_name() {
		return content_writer_name;
	}
	public void setContent_writer_name(String content_writer_name) {
		this.content_writer_name = content_writer_name;
	}
	public String getContent_time() {
		return content_time;
	}
	public void setContent_time(String content_time) {
		this.content_time = content_time;
	}
	public String getContent_kategori() {
		return content_kategori;
	}
	public void setContent_kategori(String content_kategori) {
		this.content_kategori = content_kategori;
	}
	public String getContent_subject2() {
		return content_subject2;
	}
	public void setContent_subject2(String content_subject2) {
		this.content_subject2 = content_subject2;
	}
	public String getContent_text2() {
		return content_text2;
	}
	public void setContent_text2(String content_text2) {
		this.content_text2 = content_text2;
	}
	public String getLicense_name() {
		return license_name;
	}
	public void setLicense_name(String license_name) {
		this.license_name = license_name;
	}
	public String getLicense_organ() {
		return license_organ;
	}
	public void setLicense_organ(String license_organ) {
		this.license_organ = license_organ;
	}
	public String getEduSt_date() {
		return eduSt_date;
	}
	public void setEduSt_date(String eduSt_date) {
		this.eduSt_date = eduSt_date;
	}
	public String getEduEnd_date() {
		return eduEnd_date;
	}
	public void setEduEnd_date(String eduEnd_date) {
		this.eduEnd_date = eduEnd_date;
	}
	public String getEdu_organ() {
		return edu_organ;
	}
	public void setEdu_organ(String edu_organ) {
		this.edu_organ = edu_organ;
	}
	public String getDetail_edu() {
		return detail_edu;
	}
	public void setDetail_edu(String detail_edu) {
		this.detail_edu = detail_edu;
	}
	public String getLicense_date() {
		return license_date;
	}
	public void setLicense_date(String license_date) {
		this.license_date = license_date;
	}
	public String getLicense_name2() {
		return license_name2;
	}
	public void setLicense_name2(String license_name2) {
		this.license_name2 = license_name2;
	}
	public String getLicense_date2() {
		return license_date2;
	}
	public void setLicense_date2(String license_date2) {
		this.license_date2 = license_date2;
	}
	public String getLicense_organ2() {
		return license_organ2;
	}
	public void setLicense_organ2(String license_organ2) {
		this.license_organ2 = license_organ2;
	}
	public String getLicense_name3() {
		return license_name3;
	}
	public void setLicense_name3(String license_name3) {
		this.license_name3 = license_name3;
	}
	public String getLicense_date3() {
		return license_date3;
	}
	public void setLicense_date3(String license_date3) {
		this.license_date3 = license_date3;
	}
	public String getLicense_organ3() {
		return license_organ3;
	}
	public void setLicense_organ3(String license_organ3) {
		this.license_organ3 = license_organ3;
	}
	public String getLicense_name4() {
		return license_name4;
	}
	public void setLicense_name4(String license_name4) {
		this.license_name4 = license_name4;
	}
	public String getLicense_date4() {
		return license_date4;
	}
	public void setLicense_date4(String license_date4) {
		this.license_date4 = license_date4;
	}
	public String getLicense_organ4() {
		return license_organ4;
	}
	public void setLicense_organ4(String license_organ4) {
		this.license_organ4 = license_organ4;
	}
	public String getEduSt_date2() {
		return eduSt_date2;
	}
	public void setEduSt_date2(String eduSt_date2) {
		this.eduSt_date2 = eduSt_date2;
	}
	public String getEduEnd_date2() {
		return eduEnd_date2;
	}
	public void setEduEnd_date2(String eduEnd_date2) {
		this.eduEnd_date2 = eduEnd_date2;
	}
	public String getEdu_organ2() {
		return edu_organ2;
	}
	public void setEdu_organ2(String edu_organ2) {
		this.edu_organ2 = edu_organ2;
	}
	public String getDetail_edu2() {
		return detail_edu2;
	}
	public void setDetail_edu2(String detail_edu2) {
		this.detail_edu2 = detail_edu2;
	}
	public String getEduSt_date3() {
		return eduSt_date3;
	}
	public void setEduSt_date3(String eduSt_date3) {
		this.eduSt_date3 = eduSt_date3;
	}
	public String getEduEnd_date3() {
		return eduEnd_date3;
	}
	public void setEduEnd_date3(String eduEnd_date3) {
		this.eduEnd_date3 = eduEnd_date3;
	}
	public String getEdu_organ3() {
		return edu_organ3;
	}
	public void setEdu_organ3(String edu_organ3) {
		this.edu_organ3 = edu_organ3;
	}
	public String getDetail_edu3() {
		return detail_edu3;
	}
	public void setDetail_edu3(String detail_edu3) {
		this.detail_edu3 = detail_edu3;
	}
	public String getEduSt_date4() {
		return eduSt_date4;
	}
	public void setEduSt_date4(String eduSt_date4) {
		this.eduSt_date4 = eduSt_date4;
	}
	public String getEduEnd_date4() {
		return eduEnd_date4;
	}
	public void setEduEnd_date4(String eduEnd_date4) {
		this.eduEnd_date4 = eduEnd_date4;
	}
	public String getEdu_organ4() {
		return edu_organ4;
	}
	public void setEdu_organ4(String edu_organ4) {
		this.edu_organ4 = edu_organ4;
	}
	public String getDetail_edu4() {
		return detail_edu4;
	}
	public void setDetail_edu4(String detail_edu4) {
		this.detail_edu4 = detail_edu4;
	}
	public String getContent_kategori_nm() {
		return content_kategori_nm;
	}
	public void setContent_kategori_nm(String content_kategori_nm) {
		this.content_kategori_nm = content_kategori_nm;
	}
	public String getCareerSt_date() {
		return careerSt_date;
	}
	public void setCareerSt_date(String careerSt_date) {
		this.careerSt_date = careerSt_date;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getDuty() {
		return duty;
	}
	public void setDuty(String duty) {
		this.duty = duty;
	}
	public String getCareerSt_date2() {
		return careerSt_date2;
	}
	public void setCareerSt_date2(String careerSt_date2) {
		this.careerSt_date2 = careerSt_date2;
	}
	public String getCompany2() {
		return company2;
	}
	public void setCompany2(String company2) {
		this.company2 = company2;
	}
	public String getDuty2() {
		return duty2;
	}
	public void setDuty2(String duty2) {
		this.duty2 = duty2;
	}
	public String getCareerSt_date3() {
		return careerSt_date3;
	}
	public void setCareerSt_date3(String careerSt_date3) {
		this.careerSt_date3 = careerSt_date3;
	}
	public String getCompany3() {
		return company3;
	}
	public void setCompany3(String company3) {
		this.company3 = company3;
	}
	public String getDuty3() {
		return duty3;
	}
	public void setDuty3(String duty3) {
		this.duty3 = duty3;
	}
	public String getCareerSt_date4() {
		return careerSt_date4;
	}
	public void setCareerSt_date4(String careerSt_date4) {
		this.careerSt_date4 = careerSt_date4;
	}
	public String getCompany4() {
		return company4;
	}
	public void setCompany4(String company4) {
		this.company4 = company4;
	}
	public String getDuty4() {
		return duty4;
	}
	public void setDuty4(String duty4) {
		this.duty4 = duty4;
	}
	public String getCareerEnd_date() {
		return careerEnd_date;
	}
	public void setCareerEnd_date(String careerEnd_date) {
		this.careerEnd_date = careerEnd_date;
	}
	public String getCareerEnd_date2() {
		return careerEnd_date2;
	}
	public void setCareerEnd_date2(String careerEnd_date2) {
		this.careerEnd_date2 = careerEnd_date2;
	}
	public String getCareerEnd_date3() {
		return careerEnd_date3;
	}
	public void setCareerEnd_date3(String careerEnd_date3) {
		this.careerEnd_date3 = careerEnd_date3;
	}
	public String getCareerEnd_date4() {
		return careerEnd_date4;
	}
	public void setCareerEnd_date4(String careerEnd_date4) {
		this.careerEnd_date4 = careerEnd_date4;
	}
	public String getAward_organ() {
		return award_organ;
	}
	public void setAward_organ(String award_organ) {
		this.award_organ = award_organ;
	}
	public String getAward_record() {
		return award_record;
	}
	public void setAward_record(String award_record) {
		this.award_record = award_record;
	}
	public String getAward_organ2() {
		return award_organ2;
	}
	public void setAward_organ2(String award_organ2) {
		this.award_organ2 = award_organ2;
	}
	public String getAward_record2() {
		return award_record2;
	}
	public void setAward_record2(String award_record2) {
		this.award_record2 = award_record2;
	}
	public String getAward_organ3() {
		return award_organ3;
	}
	public void setAward_organ3(String award_organ3) {
		this.award_organ3 = award_organ3;
	}
	public String getAward_record3() {
		return award_record3;
	}
	public void setAward_record3(String award_record3) {
		this.award_record3 = award_record3;
	}
	public String getAward_organ4() {
		return award_organ4;
	}
	public void setAward_organ4(String award_organ4) {
		this.award_organ4 = award_organ4;
	}
	public String getAward_record4() {
		return award_record4;
	}
	public void setAward_record4(String award_record4) {
		this.award_record4 = award_record4;
	}
	public String getSkill_nm() {
		return skill_nm;
	}
	public void setSkill_nm(String skill_nm) {
		this.skill_nm = skill_nm;
	}
	public String getSkill_stat() {
		return skill_stat;
	}
	public void setSkill_stat(String skill_stat) {
		this.skill_stat = skill_stat;
	}
	public String getSkill_nm2() {
		return skill_nm2;
	}
	public void setSkill_nm2(String skill_nm2) {
		this.skill_nm2 = skill_nm2;
	}
	public String getSkill_stat2() {
		return skill_stat2;
	}
	public void setSkill_stat2(String skill_stat2) {
		this.skill_stat2 = skill_stat2;
	}
	public String getSkill_nm3() {
		return skill_nm3;
	}
	public void setSkill_nm3(String skill_nm3) {
		this.skill_nm3 = skill_nm3;
	}
	public String getSkill_stat3() {
		return skill_stat3;
	}
	public void setSkill_stat3(String skill_stat3) {
		this.skill_stat3 = skill_stat3;
	}
	public String getSkill_nm4() {
		return skill_nm4;
	}
	public void setSkill_nm4(String skill_nm4) {
		this.skill_nm4 = skill_nm4;
	}
	public String getSkill_stat4() {
		return skill_stat4;
	}
	public void setSkill_stat4(String skill_stat4) {
		this.skill_stat4 = skill_stat4;
	}
	public String getContent_subject3() {
		return content_subject3;
	}
	public void setContent_subject3(String content_subject3) {
		this.content_subject3 = content_subject3;
	}
	public String getContent_subject4() {
		return content_subject4;
	}
	public void setContent_subject4(String content_subject4) {
		this.content_subject4 = content_subject4;
	}
	public String getContent_text3() {
		return content_text3;
	}
	public void setContent_text3(String content_text3) {
		this.content_text3 = content_text3;
	}
	public String getContent_text4() {
		return content_text4;
	}
	public void setContent_text4(String content_text4) {
		this.content_text4 = content_text4;
	}
	
	
}
