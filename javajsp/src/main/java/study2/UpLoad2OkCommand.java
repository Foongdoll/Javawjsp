package study2;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UpLoad2OkCommand implements StudyInterface {

	@SuppressWarnings("rawtypes")
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String realPath = request.getServletContext().getRealPath("/data/pdstest");
		String encoding = "UTF-8";
		int maxSize = 1024 * 1024 * 10; // 서버에 저정할 최대 용량 10MB

		// 파일 업로드 
		MultipartRequest multipartRequest = new MultipartRequest(request, realPath,maxSize,encoding, new DefaultFileRenamePolicy());
		
//		Enumeration e = multipartRequest.getParameterNames(); (X)
//		Enumeration e = multipartRequest.getFileNames();      (O)
//		
//		while(e.hasMoreElements()) {
//			String name = (String)e.nextElement();
//			System.out.println(name);
//		}
		
		
			Enumeration fileNames = multipartRequest.getFileNames();
			String fileName = "";
			String originalfileName = "";
			String filesystemName = "";
			
			while(fileNames.hasMoreElements()) {
				fileName = (String)fileNames.nextElement();
				originalfileName = multipartRequest.getOriginalFileName(fileName);
				filesystemName = multipartRequest.getFilesystemName(fileName);
			}
		
//		// 업로드된 파일의 정보를 추출해보자.. COS 외부라이브러리 이용 
//		String OriginalfName = multipartRequest.getOriginalFileName("fName");  // 업로드 시킨 파일명
//		String filesysyemName = multipartRequest.getFilesystemName("fName");   // 서버에 저장되는 파일명
//		
//		System.out.println("파일명 "+OriginalfName);//업로드 시킬때의 업로드 파일명
//		System.out.println("파일이 저장될 서버의 실제경로명 "+ realPath);
//		System.out.println("서버에 저장되는 실제 파일명 "+filesysyemName);
			
		if(!filesystemName.equals("")) 
			request.setAttribute("msg", "upLoad1Ok");
		else 
			request.setAttribute("msg", "upLoad1No");
		
		int sw = multipartRequest.getParameter("sw") == null ? 0 : Integer.parseInt(multipartRequest.getParameter("sw"));
		
			request.setAttribute("url", request.getContextPath()+"/pdstest/upLoad"+sw+".st");
		}
}