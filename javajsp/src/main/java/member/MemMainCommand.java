package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemMainCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String mid = (String) session.getAttribute("sMid");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getLoginCheck(mid);
		
		// 레벨을 문자로 처리해서 넘겨준다.
		String strLevel = "";
		if(vo.getLevel() == 0) strLevel = "관리자";
		else if(vo.getLevel() == 1) strLevel = "준회원";
		else if(vo.getLevel() == 2) strLevel = "정회원";
		else if(vo.getLevel() == 3) strLevel = "우수회원";
		else if(vo.getLevel() == 4) strLevel = "운영자";
		
		request.setAttribute("point", vo.getPoint());
		request.setAttribute("lastDate", vo.getLastDate());
		request.setAttribute("todayCnt", vo.getTodayCnt());
		request.setAttribute("visitCnt", vo.getVisitCnt());
		request.setAttribute("strLevel", strLevel);
		
		// 사용자가 방명록에서 글쓴 회수 가져오기.....
		int guestCnt = dao.getGuestWrite(mid, vo.getName(), vo.getNickName());
		request.setAttribute("guestCnt", guestCnt);
		

	}

}
