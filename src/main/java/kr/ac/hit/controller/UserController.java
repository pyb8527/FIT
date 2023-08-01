package kr.ac.hit.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.hit.beans.ContentBean;
import kr.ac.hit.beans.UserBean;
import kr.ac.hit.service.BoardService;
import kr.ac.hit.service.UserService;
import kr.ac.hit.validator.UserValidator;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private BoardService boardService;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	@GetMapping("/login")
	public String login(@ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			@RequestParam(value = "fail", defaultValue = "false") boolean fail, Model model) {
		model.addAttribute("fail", fail);

		return "user/login";
	}

	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			BindingResult result) {
		if (result.hasErrors()) {
			return "user/login";
		}
		userService.getLoginUserInfo(tempLoginUserBean);
		if (loginUserBean.isUserLogin() == true) {
			return "user/login_success";
		} else {
			return "user/login_fail";
		}
	}

	@GetMapping("/join")
	public String join(@ModelAttribute("joinUserBean") UserBean joinUserBean) {
		return "user/join";
	}

	@PostMapping("/join_pro")
	public String join_pro(@Valid @ModelAttribute("joinUserBean") UserBean joinUserBean, BindingResult result) {
		if (result.hasErrors()) {
			return "user/join";
		}
		userService.addUserInfo(joinUserBean);
		return "user/join_success";
	}

	@GetMapping("/modify")
	public String modify(@ModelAttribute("modifyUserBean") UserBean modifyUserBean) {
		userService.getModifyUserInfo(modifyUserBean);
		return "user/modify";
	}

	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyUserBean") UserBean modifyUserBean, BindingResult result) {
		if (result.hasErrors()) {
			return "user/modify";
		}
		userService.modifyUserInfo(modifyUserBean);
		return "user/modify_success";
	}

	@GetMapping("/logout")
	public String logout() {
		// 濡쒓렇-�븘�썐 �떆 UserBean媛믪쓣 蹂�寃쏀븳�떎.
		loginUserBean.setUserLogin(false);
		return "user/logout";
	}

	@GetMapping("/not_login")
	public String not_login() {
		return "user/login_not";
	}
	@GetMapping("/myslide")
	public String myslide(@ModelAttribute("modifyUserBean") UserBean modifyUserBean, ContentBean contentBean, Model model) {		
		try {
			UserBean userInfo = userService.getUserInfo(modifyUserBean);
			contentBean.setUser_idx(userInfo.getUser_idx());
			ContentBean boardYn = boardService.getBoardYn(contentBean);
			int user_idx = userInfo.getUser_idx();			
			model.addAttribute("user_idx", user_idx);			
			if(boardYn != null) {
				int contentWriterIdx = boardYn.getContent_writer_idx();
				if(user_idx == contentWriterIdx) {
					int board_info_idx = boardYn.getContent_board_idx();
					int content_idx = boardYn.getContent_idx();
					model.addAttribute("content_idx", content_idx);
					model.addAttribute("board_info_idx", board_info_idx);
					return "forward:/board/modify?content_idx="+content_idx+"&board_info_idx="+board_info_idx;
				}else {
					return "forward:/board/write";
				}
			}else {
				return "forward:/board/write";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		UserValidator valid = new UserValidator();
		binder.addValidators(valid);
	}

}
