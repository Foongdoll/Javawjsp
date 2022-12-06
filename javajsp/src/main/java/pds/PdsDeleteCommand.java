package pds;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conn.SecurityUtil;

public class PdsDeleteCommand implements PdsInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = request.getParameter("idx") == null ? 0 : Integer.parseInt(request.getParameter("idx"));
		String fSName_ = request.getParameter("fSName") == null ? "" : request.getParameter("fSName");
		String pwd = request.getParameter("pwd") == null ? "" : request.getParameter("pwd");
		
		String[] fSNames = fSName_.split("/");
		
		
		// DB에 저장된 비밀번호와 비교하기위해 암호화 한 후 비교
		SecurityUtil securityUtil = new SecurityUtil();
		
		pwd = securityUtil.encryptSHA256(pwd);
		
		PdsDAO dao = new PdsDAO();
		
		PdsVO vo = dao.getIdxSearch(idx);
		
		String res = "0";
		if(!vo.getPwd().equals(pwd)) {
			response.getWriter().write(res);
			return;
		}
		else {
			// 파일이 저장되어있는 서버의 실제 경로를 찾아온다.
			String realPath = request.getServletContext().getRealPath("/data/pds/");
			
			// 서버 파일 시스템에 실제로 존재하는 파일을 찾아서 삭제 처리한다.
			
			for(String fSName : fSNames) {
//				File file = new File(realPath + fSName);
//				if(file.exists()) file.delete();
				new File(realPath + fSName).delete();
			}
			
			// 파일 삭제 완료 후 DB에 저장된 자료파일을 삭제한다.
			res = dao.setPdsDelete(idx);
			
			response.getWriter().write(res);
		}
		
	}
}
