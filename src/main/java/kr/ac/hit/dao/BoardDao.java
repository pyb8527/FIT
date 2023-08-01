package kr.ac.hit.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.hit.beans.ContentBean;
import kr.ac.hit.mapper.BoardMapper;

@Repository
public class BoardDao {

	@Autowired
	private BoardMapper boardMapper;

	public void addContentInfo(ContentBean writeContentBean) {
		//for (int i = 0; i < 50; i++) {
			boardMapper.addContentInfo(writeContentBean);
		//}
	}

	public String getBoardInfoName(int board_info_idx) {
		return boardMapper.getBoardInfoName(board_info_idx);
	}

	public List<ContentBean> getContentList(int board_info_idx, RowBounds rowBounds) {
		return boardMapper.getContentList(board_info_idx, rowBounds);
	}
	
	public List<ContentBean> getInfoContentList(int board_info_idx) {
		return boardMapper.getInfoContentList(board_info_idx);
	}
	
	public List<ContentBean> getBoardKategori(ContentBean writeContentBean) {
		return boardMapper.getBoardKategori(writeContentBean);
	}

	public ContentBean getContentInfo(int content_idx) {
		return boardMapper.getContentInfo(content_idx);
	}

	public void modifyContentInfo(ContentBean modifyContentBean) {
		boardMapper.modifyContentInfo(modifyContentBean);
	}

	public void deleteContentInfo(int content_idx) {
		boardMapper.deleteContentInfo(content_idx);
	}
	public int getContentCount(int content_board_idx) {
		return boardMapper.getContentCount(content_board_idx);
	}
	public ContentBean getBoardYn(ContentBean vo)throws Exception{
		return boardMapper.getBoardYn(vo);
	}
	public ContentBean getContentFile(ContentBean vo)throws Exception{
		return boardMapper.getContentFile(vo);
	}
}
