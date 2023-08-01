package kr.ac.hit.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.hit.beans.ContentBean;
import kr.ac.hit.beans.PageBean;
import kr.ac.hit.beans.UserBean;
import kr.ac.hit.service.BoardService;
import kr.ac.hit.service.UserService;

@Controller

@PropertySource("/WEB-INF/properties/db.properties")

@RequestMapping("/board")
public class BoardController {

	@Value("${path.upload}")
	private String uploadPath;
	
	@Autowired
	private BoardService boardService;
	@Autowired
	private UserService userService;
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	@GetMapping("/main")
	public String main(@RequestParam("board_info_idx") int board_info_idx,
					   @RequestParam(value = "page", defaultValue="1") int page,
					   Model model) {
		model.addAttribute("board_info_idx", board_info_idx);
		String boardInfoName = boardService.getBoardInfoName(board_info_idx);
		model.addAttribute("boardInfoName", boardInfoName);
		List<ContentBean> contentList = boardService.getContentList(board_info_idx, page);
		model.addAttribute("contentList", contentList);
		model.addAttribute("loginUserBean", loginUserBean);
		PageBean pageBean = boardService.getContentCount(board_info_idx, page);
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("page", page);
		model.addAttribute("uploadPath", uploadPath);
		return "board/main";
	}
	
	/*
	 * @GetMapping("/read") public String read(@RequestParam("board_info_idx") int
	 * board_info_idx,
	 * 
	 * @RequestParam("content_idx") int content_idx, Model model) {
	 * model.addAttribute("board_info_idx", board_info_idx);
	 * model.addAttribute("content_idx", content_idx); String boardInfoName =
	 * boardService.getBoardInfoName(board_info_idx);
	 * model.addAttribute("boardInfoName", boardInfoName); ContentBean
	 * readContentBean = boardService.getContentInfo(board_info_idx,
	 * modifyUserBean.getUser_idx()); model.addAttribute("readContentBean",
	 * readContentBean); model.addAttribute("loginUserBean", loginUserBean); return
	 * "board/read"; }
	 */
	@GetMapping("/myslide")
	public String read2(@ModelAttribute("writeContentBean") ContentBean writeContentBean,
						@RequestParam("board_info_idx") int board_info_idx,
					   @RequestParam("content_idx") int content_idx,
					   @ModelAttribute("modifyUserBean") UserBean modifyUserBean,
					   Model model) {
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("content_idx", content_idx);
		String boardInfoName = boardService.getBoardInfoName(board_info_idx);
		model.addAttribute("boardInfoName", boardInfoName);
		userService.getModifyUserInfo(modifyUserBean);
		ContentBean readContentBean = boardService.getContentInfo(content_idx);	
		model.addAttribute("readContentBean", readContentBean);
		model.addAttribute("loginUserBean", loginUserBean);
		
		return "board/myslide";
	}		
	@GetMapping("/write")
	public String write(@ModelAttribute("writeContentBean") ContentBean writeContentBean,						
						@ModelAttribute("modifyUserBean") UserBean modifyUserBean,
						 Model model) {
		try {		
			/*
			 * model.addAttribute("board_info_idx", board_info_idx);
			 * writeContentBean.setContent_board_idx(board_info_idx); String boardInfoName =
			 * boardService.getBoardInfoName(board_info_idx); //
			 */		List<ContentBean> boardKategori = boardService.getBoardKategori(writeContentBean);
		model.addAttribute("loginUserBean", loginUserBean);		
		userService.getModifyUserInfo(modifyUserBean);
		writeContentBean.setUser_idx(modifyUserBean.getUser_idx());
		writeContentBean.setUser_age(modifyUserBean.getUser_age());
		writeContentBean.setUser_phone(modifyUserBean.getUser_phone());
		writeContentBean.setUser_email(modifyUserBean.getUser_email());
		model.addAttribute("boardKategori", boardKategori);		
		/* model.addAttribute("boardInfoName", boardInfoName); */
		}catch (Exception e) {Error.class.getClass();}
		return "board/write";
	}
	@PostMapping("/write_pro")
	public String write_pro(@Valid @ModelAttribute("writeContentBean") ContentBean writeContentBean, BindingResult result,							
							Model model) {					
		if(result.hasErrors()) {
			return "board/write";
		}
		boardService.addContentInfo(writeContentBean);
		return "board/write_success";
	}
	@GetMapping("/write2")
	public String write2(@ModelAttribute("writeContentBean") ContentBean writeContentBean,
						@RequestParam("board_info_idx") int board_info_idx,
						@RequestParam("page") int page,
						 Model model) {//
		
		model.addAttribute("board_info_idx", board_info_idx);
		writeContentBean.setContent_board_idx(board_info_idx);
		String boardInfoName = boardService.getBoardInfoName(board_info_idx); //
		model.addAttribute("boardInfoName", boardInfoName); //
		model.addAttribute("page",page);
		return "board/write2";
	}
	@PostMapping("/write_pro2")
	public String write_pro2(@Valid @ModelAttribute("writeContentBean") ContentBean writeContentBean, BindingResult result,
							@RequestParam("page") int page,
							Model model) {
		if(result.hasErrors()) {
			return "board/write2";
		}
		boardService.addContentInfo(writeContentBean);
		model.addAttribute("page",page);
		return "board/write_success2";
	}
	  @GetMapping("/modify") 
	  public String modify(@RequestParam("board_info_idx")int board_info_idx,
	  @ModelAttribute("writeContentBean") ContentBean writeContentBean,
	  @RequestParam("content_idx") int content_idx,
	  @ModelAttribute("modifyUserBean") UserBean modifyUserBean,
	  Model model ) {
			try {
				model.addAttribute("board_info_idx", board_info_idx);
				model.addAttribute("content_idx", content_idx);
				String boardInfoName = boardService.getBoardInfoName(board_info_idx);
				model.addAttribute("boardInfoName", boardInfoName);
				userService.getModifyUserInfo(modifyUserBean);
				ContentBean modifyContentBean = boardService.getContentInfo(content_idx);
				model.addAttribute("modifyContentBean", modifyContentBean);
				
				List<ContentBean> boardKategori = boardService.getBoardKategori(writeContentBean);
				model.addAttribute("boardKategori", boardKategori);
				return "board/modify";
			}catch (Exception e) {Error.class.getClass();}
				return "board/myslide";
			}
	 
	
	@PostMapping("/modify_pro")
	public String modify_pro(@Valid 
							 @ModelAttribute("modifyContentBean") ContentBean modifyContentBean,
							 Model model,
							 @RequestParam("content_idx") int content_idx,
							 @RequestParam("board_info_idx")int board_info_idx,
							 @ModelAttribute("modifyUserBean") UserBean modifyUserBean,
							 BindingResult result) throws Exception {
		model.addAttribute("content_idx", content_idx);
		model.addAttribute("board_info_idx", board_info_idx);
		userService.getModifyUserInfo(modifyUserBean);
		modifyContentBean.setUser_idx(modifyUserBean.getUser_idx());
		modifyContentBean.setContent_idx(content_idx);
		if(result.hasErrors()) {
			return "board/modify";
		}
		boardService.modifyContentInfo(modifyContentBean);
		
		return "board/modify_success"; 
	}
	
	@GetMapping("/delete") 
	public String delete(@RequestParam("board_info_idx") int board_info_idx,
						 @RequestParam("content_idx") int content_idx,
						 @RequestParam("page") int page,
						 Model model){
		model.addAttribute("board_info_idx", board_info_idx);
		model.addAttribute("page",page);
		boardService.deleteContentInfo(content_idx);
		return "board/delete";
	}
	@GetMapping("/not_writer")
	public String not_writer() {
		return "board/not_writer";
	}
	
}








