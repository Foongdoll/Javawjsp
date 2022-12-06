package pds;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Field;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import conn.SecurityUtil;

public class PdsInputOkCommand implements PdsInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String realPath = request.getServletContext().getRealPath("/data/pds");
		String encoding = "UTF-8";
		int maxSize = 1024 * 1024 * 10; // 서버에 저정할 최대 용량 10MB

		MultipartRequest multipartRequest = new MultipartRequest(request, realPath,maxSize,encoding,new DefaultFileRenamePolicy());
		// 업로드 시킨 파일 / 를 구분으로 이어붙이기 처리
		Enumeration fileNames = multipartRequest.getFileNames();
		
		String originalFileName = "";
		String filesystemName = "";
		
		while(fileNames.hasMoreElements()) {
			String file = (String)fileNames.nextElement();
			
			if(multipartRequest.getFilesystemName(file) != null) {
				originalFileName += multipartRequest.getOriginalFileName(file)+ "/";
				filesystemName += multipartRequest.getFilesystemName(file) + "/";
			}
		}
		
		originalFileName = originalFileName.substring(0,originalFileName.length()-1);
		filesystemName = filesystemName.substring(0,filesystemName.length()-1);
		
		// 세션에서 값 받기
		HttpSession session = request.getSession();
		String mid = (String)session.getAttribute("sMid");
		String nickName = (String)session.getAttribute("sNickName");
		
		// 폼 값 넘긴거 받기
		String listPart = multipartRequest.getParameter("listPart") == null ? "전체" : multipartRequest.getParameter("listPart");
		String title = multipartRequest.getParameter("title") == null ? "" : multipartRequest.getParameter("title");
		String content = multipartRequest.getParameter("content") == null ? "" : multipartRequest.getParameter("content");
		String part = multipartRequest.getParameter("part") == null ? "" : multipartRequest.getParameter("part");
		String openSw = multipartRequest.getParameter("openSw") == null ? "공개" : multipartRequest.getParameter("openSw");
		String pwd = multipartRequest.getParameter("pwd") == null ? "" : multipartRequest.getParameter("pwd");
		int fileSize = multipartRequest.getParameter("fileSize") == null ? 0 : Integer.parseInt(multipartRequest.getParameter("fileSize"));
		String hostIp = multipartRequest.getParameter("hostIp") == null ? "" : multipartRequest.getParameter("hostIp");
		
		// 암호화
		
		SecurityUtil securityUtil = new SecurityUtil();
		
		pwd = securityUtil.encryptSHA256(pwd);
		
		PdsVO vo = new PdsVO();
		vo.setMid(mid);
		vo.setNickName(nickName);
		vo.setfName(originalFileName);
		vo.setfSName(filesystemName);
		vo.setfSize(fileSize);
		vo.setTitle(title);
		vo.setPart(part);
		vo.setPwd(pwd);
		vo.setOpenSw(openSw);
		vo.setContent(content);
		vo.setHostIp(hostIp);
		
		PdsDAO dao = new PdsDAO();
		
		int res = dao.setPdsInputOk(vo);
		
		if(res == 1) {
			request.setAttribute("msg", "pdsInputOk");
			request.setAttribute("url", request.getContextPath()+"/pdsList.pds?part="+listPart);
		}
		else {
			request.setAttribute("msg", "pdsInputNo");
			request.setAttribute("url", request.getContextPath()+"/pdsInput.pds?part="+listPart);
		}
		
		
		
	}
}
