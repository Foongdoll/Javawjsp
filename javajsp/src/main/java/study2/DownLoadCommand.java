package study2;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

public class DownLoadCommand implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String realPath = request.getServletContext().getRealPath("/data/pdstest");
		
		String[] files = new File(realPath).list();
		
		for(String file : files) {
			System.out.println("file : "+file);
		}
		
		request.setAttribute("files", files);
	}
}
