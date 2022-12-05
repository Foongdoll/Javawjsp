package study2;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UpLoad1OkCommand implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String fName = request.getParameter("fName")==null ? "" : request.getParameter("fName"); 
//    enctype="multipart/form-data"; 로 넘기면 타입이 달라져서 request로 못받는다.
//		System.out.println("넘어온 파일명"+ fName);

			// COS라이브러리에서 제공해주는 객체... MultipartRequest()/ DefaultFileRenamePolicy() : 중복방지 클래스 
			// MultipartRequest( 저장소명 (request),"서버에 저장될 파일의 경로","서버에 저장가능한 파일의 최대용량","코드변화",기타옵션(중복방지를 위한 클래스));
//			ServletContext application = request.getServletContext();
//			String realPath = application.getRealPath("/");
			// 1. request로 저장될 파일의 경로 지정
			String realPath = request.getServletContext().getRealPath("/data/pdstest");
			
			int maxSize = 1024 * 1024 * 10; // 서버에 저정할 최대 용량 10MB
			String encoding = "UTF-8";
			
			// 파일 업로드 
			MultipartRequest multipartRequest = new MultipartRequest(request, realPath,maxSize,encoding, new DefaultFileRenamePolicy());
			
			// 업로드된 파일의 정보를 추출해보자.. COS 외부라이브러리 이용 
			String OriginalfName = multipartRequest.getOriginalFileName("fName");  // 업로드 시킨 파일명
			String filesysyemName = multipartRequest.getFilesystemName("fName");   // 서버에 저장되는 파일명
			
			System.out.println("파일명 "+OriginalfName);//업로드 시킬때의 업로드 파일명
			System.out.println("파일이 저장될 서버의 실제경로명 "+ realPath);
			System.out.println("서버에 저장되는 실제 파일명 "+filesysyemName);
			
			
			if(filesysyemName != null) {
				request.setAttribute("msg", "upLoad1Ok");
			}
			else {
				request.setAttribute("msg", "upLoad1No");
			}
			
			
			request.setAttribute("url", request.getContextPath()+"/pdstest/upLoad1.st");
	}

}
