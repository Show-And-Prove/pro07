package kr.go.puac.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.go.puac.dto.MemberDTO;
import kr.go.puac.model.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	@Autowired
	MemberDAO memberDAO;

	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDAO.memberList();
	}

	@Override
	public MemberDTO getMember(String id) throws Exception {
		return memberDAO.getMember(id);
	}

	@Override
	public void memberInsert(MemberDTO dto) throws Exception {
		memberDAO.memberInsert(dto);

	}

	@Override
	public MemberDTO signIn(MemberDTO mdto) throws Exception {
		return memberDAO.signIn(mdto);
	}

	@Override
	public MemberDTO loginCheck(MemberDTO mdto) throws Exception {
		return memberDAO.loginCheck(mdto);
	}

	@Override
	public boolean login(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		boolean loginSuccess = false;
		MemberDTO mdto = new MemberDTO();
		
		mdto.setId(request.getParameter("id"));
		mdto.setPw(request.getParameter("pw"));
		
		MemberDTO login = memberDAO.login(mdto);
		
		loginSuccess =  pwdEncoder.matches(mdto.getPw(), login.getPw());
		if(login != null && loginSuccess==true) {
			session.setAttribute("member", login);
			session.setAttribute("sid", login.getId());
			loginSuccess = true;
		}
		return loginSuccess;
	}

	@Override
	public void memberUpdate(MemberDTO mdto) throws Exception {
		memberDAO.memberUpdate(mdto);

	}

	@Override
	public void memberDelete(String id) throws Exception {
		memberDAO.memberDelete(id);

	}
	
	
}
