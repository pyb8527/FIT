package kr.ac.hit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.hit.beans.ContentBean;
import kr.ac.hit.service.BoardService;
@Controller
@RequestMapping("/info")
public class InfoController {
	
	@Autowired
	private BoardService boardService;
		@GetMapping("/infoDetail")
		public String palace(@RequestParam("info_idx") int info_idx,
				   @RequestParam(value = "page", defaultValue="1") int page,
				   Model model) {
			model.addAttribute("info_idx", info_idx);
			List<ContentBean> contentList = boardService.getInfoContentList(info_idx);
			model.addAttribute("contentList", contentList);	
			model.addAttribute("contentSize", contentList.size());
			model.addAttribute("page",page);
			
			return "info/infoDetail";
		}
		@GetMapping("/tower")
		public String tower() {
			return "info/tower";
		}
		@GetMapping("/museum")
		public String museum() {
			return "info/museum";
		}
		//�꽌釉�
		@GetMapping("/palacesub")
		public String palacesub() {
			return "info/palacesub";
		}
		@GetMapping("/towersub")
		public String towersub() {
			return "info/towersub";
		}
		@GetMapping("/museumsub")
		public String museumsub() {
			return "info/museumsub";
		}
}
