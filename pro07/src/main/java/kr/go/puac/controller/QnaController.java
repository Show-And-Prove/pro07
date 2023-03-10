package kr.go.puac.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.go.puac.dto.QnaDTO;
import kr.go.puac.service.QnaService;

@Controller
@RequestMapping("/qna/*")
public class QnaController {

	@Autowired
	QnaService qnaService;
	
	@GetMapping("list")
	public String qnaList(Model model) throws Exception {
		List<QnaDTO> qnaList = qnaService.qnaList();
		model.addAttribute("qnaList", qnaList);
		return "qna/qnaList";
	}
	
	@GetMapping("detail")
	public String qnaDetail(@RequestParam("qno") int qno, Model model) throws Exception {
		QnaDTO qnaDetail = qnaService.qnaDetail(qno);
		model.addAttribute("qnaDetail", qnaDetail);
		return "qna/qnaDetail";
	}
	
	//질문작성폼
	@GetMapping("qWrite")
	public String qWriteForm(HttpServletRequest request, Model model) throws Exception {
		return "qna/questionWrite";
	}
	
	//질문작성 컨트롤러
	@PostMapping("qWrite")
	public String qWrite(HttpServletRequest request, Model model) throws Exception {
		QnaDTO dto = new QnaDTO();
		
		//형변환
		int lev = Integer.parseInt(request.getParameter("lev"));
		
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		dto.setAuthor(request.getParameter("author"));
		dto.setLev(lev);
		dto.setSec(request.getParameter("sec"));
		qnaService.questionWrite(dto);
		
		return "redirect:list.do";
	}
	
	//답변작성폼(해당 질문의 제목, 내용을 받아옴)
	@GetMapping("aWrite")
	public String aWriteForm(HttpServletRequest request, Model model) throws Exception {
		int qno = Integer.parseInt(request.getParameter("qno"));
		QnaDTO dto = qnaService.qnaDetail(qno);
		model.addAttribute("dto", dto);
		return "qna/answerWrite";
	}
	
	//답변작성 컨트롤러
	@PostMapping("aWrite")
	public String aWrite(HttpServletRequest request, Model model) throws Exception {
		QnaDTO adto = new QnaDTO();
		
		int lev = Integer.parseInt(request.getParameter("lev"));
		//어떤 질문에 대한 답변인지 해당 질문의 qno값을 view에 hidden으로 숨겨둔 값을 가져옴
		int parno = Integer.parseInt(request.getParameter("parno"));
		
		adto.setTitle(request.getParameter("title"));
		adto.setContent(request.getParameter("content"));
		adto.setAuthor(request.getParameter("author"));
		adto.setLev(lev);
		adto.setParno(parno);
		adto.setSec(request.getParameter("sec"));
		qnaService.answerWrite(adto);
		
		return "redirect:list.do";
	}
	
	@GetMapping("delete")
	public String qDelete(HttpServletRequest request, Model model) throws Exception {
		
		int qno = Integer.parseInt(request.getParameter("qno"));
		qnaService.qDelete(qno);
		
		return "redirect:list.do";
	}
	
	@GetMapping("edit")
	public String editForm(HttpServletRequest request, Model model) throws Exception {
		int qno = Integer.parseInt(request.getParameter("qno"));
		
		QnaDTO dto = qnaService.qnaDetail(qno);
		model.addAttribute("dto", dto);
		return "qna/qnaUpdate";
	}
	
	@PostMapping("edit")
	public String qEdit(HttpServletRequest request, Model model) throws Exception {
		int qno = Integer.parseInt(request.getParameter("qno"));
		
		QnaDTO dto = new QnaDTO();
		dto.setQno(qno);
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		dto.setSec(request.getParameter("sec"));
		
		qnaService.qEdit(dto);
		
		return "redirect:list.do";
	}
	
}
