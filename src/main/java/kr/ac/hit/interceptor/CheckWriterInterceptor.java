package kr.ac.hit.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.ac.hit.beans.ContentBean;
import kr.ac.hit.beans.UserBean;
import kr.ac.hit.service.BoardService;

public class CheckWriterInterceptor implements HandlerInterceptor{
	private UserBean loginUserBean;
	private BoardService boardService;
	
	public CheckWriterInterceptor(UserBean loginUserBean, BoardService boardService) {
		this.loginUserBean = loginUserBean;
		this.boardService = boardService;
	}
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String str1 = request.getParameter("content_idx");
		int content_idx = Integer.parseInt(str1);
		ContentBean currentContentBean = boardService.getContentInfo(content_idx);
		if(currentContentBean.getContent_writer_idx()
				!= loginUserBean.getUser_idx()) {
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/board/not_writer");
			return false;
		}
		return HandlerInterceptor.super.preHandle(request, response, handler);
	}

}
