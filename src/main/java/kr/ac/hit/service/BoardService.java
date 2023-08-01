package kr.ac.hit.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.hit.beans.ContentBean;
import kr.ac.hit.beans.PageBean;
import kr.ac.hit.beans.UserBean;
import kr.ac.hit.dao.BoardDao;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class BoardService {
	
	@Value("${path.upload}")
	private String path_upload;
	
	@Autowired
	private BoardDao boardDao;
	
	@Value("${page.listCount}")
	private int page_listCount;
	
	@Value("${page.paginationCount}")
	private int page_paginationCount;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	private String saveUploadFile(MultipartFile upload_file) {
		
		String file_name = System.currentTimeMillis() + "_" + upload_file.getOriginalFilename();
		
		try {
			upload_file.transferTo(new File(path_upload + "/" + file_name));
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return file_name;
	}
	
	public void addContentInfo(ContentBean writeContentBean) {
		
		if(writeContentBean.getUpload_file().isEmpty()) {writeContentBean.setContent_file("");}
		if(writeContentBean.getUpload_file2().isEmpty()) {writeContentBean.setContent_file2("");}
		if(writeContentBean.getUpload_file3().isEmpty()) {writeContentBean.setContent_file3("");}
		if(writeContentBean.getUpload_file4().isEmpty()) {writeContentBean.setContent_file4("");}
		
		if(!writeContentBean.getUpload_file().isEmpty()) {
			MultipartFile upload_file = writeContentBean.getUpload_file();
			 if(upload_file.getSize() > 0) { String file_name =
			 saveUploadFile(upload_file); writeContentBean.setContent_file(file_name); }
		}
		if(!writeContentBean.getUpload_file2().isEmpty()) {
			MultipartFile upload_file2 = writeContentBean.getUpload_file2();
			 if(upload_file2.getSize() > 0) { String file_name2 =
			 saveUploadFile(upload_file2); writeContentBean.setContent_file2(file_name2);
			 } 
		}
		if(!writeContentBean.getUpload_file3().isEmpty()) {
			MultipartFile upload_file3 = writeContentBean.getUpload_file3();
			 if(upload_file3.getSize() > 0) { String file_name3 =
			 saveUploadFile(upload_file3); writeContentBean.setContent_file3(file_name3);
			 } 
		}
		if(!writeContentBean.getUpload_file4().isEmpty()) {
			MultipartFile upload_file4 = writeContentBean.getUpload_file4();
			 if(upload_file4.getSize() > 0) { String file_name4 =
			 saveUploadFile(upload_file4); writeContentBean.setContent_file4(file_name4);
			 }
		}
		int content_kategori = Integer.valueOf(writeContentBean.getContent_kategori());
		int board_info_idx = 0;
		if( content_kategori < 5) board_info_idx = 1;
		else if( content_kategori >= 5 && content_kategori < 9) board_info_idx = 2;
		else if( content_kategori >= 9 && content_kategori < 13) board_info_idx = 3;
		else if( content_kategori >= 13 && content_kategori < 17) board_info_idx = 4;
		else if( content_kategori >= 17 && content_kategori < 21) board_info_idx = 5;
		writeContentBean.setContent_board_idx(board_info_idx);
		MultipartFile id_pic = writeContentBean.getId_pic();
		if(id_pic.getSize() > 0) {
			String user_face = saveUploadFile(id_pic);
			writeContentBean.setUser_face(user_face);
		}
		writeContentBean.setContent_writer_idx(loginUserBean.getUser_idx());
		
		boardDao.addContentInfo(writeContentBean);
	}
	public String getBoardInfoName(int board_info_idx) {
		return boardDao.getBoardInfoName(board_info_idx);
		}
	
	public List<ContentBean> getBoardKategori(ContentBean writeContentBean)throws Exception{
		return boardDao.getBoardKategori(writeContentBean);
	}
	
	public List<ContentBean> getContentList(int board_info_idx, int page){
		int start = (page - 1) * page_listCount;
		RowBounds rowBounds = new RowBounds(start, page_listCount);
		
		return boardDao.getContentList(board_info_idx, rowBounds); 
		
	}
	
	public List<ContentBean> getInfoContentList(int board_info_idx){
		return boardDao.getInfoContentList(board_info_idx); 
		
	}
	public ContentBean getContentInfo(int content_idx) {
		return boardDao.getContentInfo(content_idx);
	}
	public void modifyContentInfo(ContentBean modifyContentBean) throws Exception {	
		
		if(modifyContentBean.getUpload_file().isEmpty()) {modifyContentBean.setContent_file("");}
		if(modifyContentBean.getUpload_file2().isEmpty()) {modifyContentBean.setContent_file2("");}
		if(modifyContentBean.getUpload_file3().isEmpty()) {modifyContentBean.setContent_file3("");}
		if(modifyContentBean.getUpload_file4().isEmpty()) {modifyContentBean.setContent_file4("");}
		
		if(!modifyContentBean.getUpload_file().isEmpty()) {
			MultipartFile upload_file = modifyContentBean.getUpload_file();
			 if(upload_file.getSize() > 0) { String file_name =
			 saveUploadFile(upload_file); modifyContentBean.setContent_file(file_name); }
		}
		if(!modifyContentBean.getUpload_file2().isEmpty()) {
			MultipartFile upload_file2 = modifyContentBean.getUpload_file2();
			 if(upload_file2.getSize() > 0) { String file_name2 =
			 saveUploadFile(upload_file2); modifyContentBean.setContent_file2(file_name2);
			 } 
		}
		if(!modifyContentBean.getUpload_file3().isEmpty()) {
			MultipartFile upload_file3 = modifyContentBean.getUpload_file3();
			 if(upload_file3.getSize() > 0) { String file_name3 =
			 saveUploadFile(upload_file3); modifyContentBean.setContent_file3(file_name3);
			 } 
		}
		if(!modifyContentBean.getUpload_file4().isEmpty()) {
			MultipartFile upload_file4 = modifyContentBean.getUpload_file4();
			 if(upload_file4.getSize() > 0) { String file_name4 =
			 saveUploadFile(upload_file4); modifyContentBean.setContent_file4(file_name4);
			 }
		}
		
		boardDao.modifyContentInfo(modifyContentBean);
	} 
	public void deleteContentInfo(int content_idx) {
		boardDao.deleteContentInfo(content_idx); 
	}
	//�럹�씠吏� �븯湲�
	public PageBean getContentCount(int content_board_idx, int currentPage) {
		int content_count = boardDao.getContentCount(content_board_idx);
		PageBean pageBean = new PageBean(content_count, currentPage, page_listCount, page_paginationCount);
		return pageBean;
	}
	
	public ContentBean getBoardYn(ContentBean vo) throws Exception {
		return boardDao.getBoardYn(vo);
	}
	
	public ContentBean getContentFile(ContentBean vo)throws Exception{
		return boardDao.getContentFile(vo);
	}
}








