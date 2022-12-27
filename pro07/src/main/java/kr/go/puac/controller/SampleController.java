package kr.go.puac.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.go.puac.dto.SampleDTO;
import kr.go.puac.service.SampleService;

@Controller
@RequestMapping("/sample/*")
public class SampleController {

	@Autowired
	SampleService sampleService;
	
	@GetMapping("list")
	public String sampleList(Model model) throws Exception {
		List<SampleDTO> sampleList = sampleService.sampleList();
		model.addAttribute("sampleList", sampleList);
		return "sample/list";
	}
	
	@GetMapping("detail")
	public String sampleDetail(@RequestParam("id") String id, Model model) throws Exception {
		SampleDTO sampleDetail = sampleService.sampleDetail(id);
		model.addAttribute("sampleDetail", sampleDetail);
		return "sample/detail";
	}
}
