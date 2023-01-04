package kr.go.puac.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.go.puac.dto.BoardDTO;
import kr.go.puac.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@GetMapping("list")
	public String boardList(Model model) throws Exception {
		List<BoardDTO> boardList = boardService.boardList();
		model.addAttribute("boardList", boardList);
		return "board/boardList";
	}
	
	@GetMapping("detail")
	public String boardDetail(@RequestParam("bid") int bid, Model model) throws Exception {
		BoardDTO boardDetail = boardService.boardDetail(bid);
		model.addAttribute("boardDetail", boardDetail);
		return "board/boardDetail";
	}
	
	
	
}
