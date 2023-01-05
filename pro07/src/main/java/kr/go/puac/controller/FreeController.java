package kr.go.puac.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;



import kr.go.puac.dto.FreeDTO;
import kr.go.puac.service.FreeService;

@Controller
@RequestMapping("/free/*")
public class FreeController {

	@Autowired
	FreeService freeService;
	
	@GetMapping("list")
	public String freeList(Model model) throws Exception{
		List<FreeDTO> freeList = new ArrayList<FreeDTO>();
		freeList = freeService.freeList();
		model.addAttribute("freeList", freeList);
		
		return "free/freeList";
		
	}
	
	@GetMapping("detail.do")
	public String getFreeDetail(@RequestParam("fno") int fno, Model model) throws Exception {
		FreeDTO dto = freeService.freeDetail(fno);
		model.addAttribute("dto", dto);
		return "free/freeDetail";
	}
	
	@GetMapping("insert.do")
	public String insertForm(HttpServletRequest request, Model model) throws Exception {
		return "free/freeInsert";
	}
	
	@PostMapping("insert.do")
	public String freeInsert(HttpServletRequest request, Model model) throws Exception {
		FreeDTO dto = new FreeDTO();
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		dto.setId(request.getParameter("id"));
		freeService.freeInsert(dto);
		
		return "redirect:list.do";
	}
	
	@GetMapping("delete.do")
	public String freeDelete(HttpServletRequest request, Model model) throws Exception {
		int fno = Integer.parseInt(request.getParameter("fno"));
		freeService.freeDelete(fno);
		
		return "redirect:list.do";
	}
	
	@GetMapping("edit.do")
	public String editForm(HttpServletRequest request, Model model) throws Exception {
		int fno = Integer.parseInt(request.getParameter("fno"));
		FreeDTO dto = freeService.freeDetail(fno);
		model.addAttribute("dto", dto);
		return "free/freeEdit";
	}
	
	@PostMapping("edit.do")
	public String freeEdit(HttpServletRequest request, Model model) throws Exception {
		int fno = Integer.parseInt(request.getParameter("fno"));
		
		FreeDTO dto = new FreeDTO();
		dto.setFno(fno);
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		freeService.freeEdit(dto);
		
		return "redirect:list.do";
	}
	
	@RequestMapping(value="imageUpload.do", method = RequestMethod.POST)
	public void imageUpload(HttpServletRequest request, HttpServletResponse response, MultipartHttpServletRequest multiFile, @RequestParam MultipartFile upload) throws Exception{
		UUID uid = UUID.randomUUID();
		
		OutputStream out = null;
		PrintWriter printWriter = null;
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		try {
			String fileName = upload.getOriginalFilename();
			byte[] bytes = upload.getBytes();
			String path = "D:\\min2\\pro07\\pro07\\src\\main\\webapp\\resources\\upload" + "ckImage/";
			String ckUploadPath = path + uid + "_" + fileName;
			File folder = new File(path);
			System.out.println("path : " + path);
			if(!folder.exists()) {
				try {
					folder.mkdirs();
				}catch(Exception e) {
					e.getStackTrace();
				}
			}
			
			out = new FileOutputStream(new File(ckUploadPath));
			out.write(bytes);
			out.flush();
			
			String callback = request.getParameter("CKEditorFuncNum");
			printWriter = response.getWriter();
			String fileUrl = "/free/ckImgSubmit.do?uid=" + uid + "&fileName=" + fileName;
			
			printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
			printWriter.flush();
			
		}catch(IOException e) {
			e.printStackTrace();
		}finally {
			try {
				if(out != null) {
					out.close();
				} if(printWriter != null) {
					printWriter.close();
				} 
			}catch(IOException e) {
					e.printStackTrace();
				}
			}return;
			
		}
	
	@RequestMapping(value="ckImgSubmit.do")
	public void ckSubmit(@RequestParam(value="uid") String uid, @RequestParam(value="fileName") String fileName, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String path = "D:\\min2\\pro07\\pro07\\src\\main\\webapp\\resources\\upload" + "ckImage/";
		System.out.println("path : " + path);
		String sDirPath = path + uid + "_" + fileName;
		
		File imgFile = new File(sDirPath);
		
		if(imgFile.isFile()) {
			byte[] buf = new byte[1024];
			int readByte = 0;
			int length = 0;
			byte[] imgBuf = null;
			
			FileInputStream fileInputStream = null;
			ByteArrayOutputStream outputStream = null;
			ServletOutputStream out = null;
			
			try {
				fileInputStream = new FileInputStream(imgFile);
				outputStream = new ByteArrayOutputStream();
				out = response.getOutputStream();
				
				while((readByte = fileInputStream.read(buf)) != -1) {
					outputStream.write(buf, 0, readByte);
				}
				
				imgBuf = outputStream.toByteArray();
				length = imgBuf.length;
				out.write(imgBuf, 0, length);
				out.flush();
			}catch(IOException e) {
				e.printStackTrace();
			}finally {
				outputStream.close();
				fileInputStream.close();
				out.close();
			}
		}
	}
		
}
