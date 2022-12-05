package study2.ajax;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import member.MemberDAO;
import member.MemberVO;

@SuppressWarnings("serial")
@WebServlet("/idSearchTest6")
public class IdSearchTest6 extends HttpServlet {
	@SuppressWarnings("unchecked")
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getLoginCheck(mid);
		
		// System.out.println("vo : " + vo);
		
		// json방식으로 자료를 담기위해 컬렉션프레임워크의 HashMap를 사용했다.
		HashMap<String, String> map = new HashMap<>();
		// 찾아온 1건의 자료를 map에 담아준다.
		map.put("mid", vo.getMid());
		map.put("name", vo.getName());
		map.put("nickName", vo.getNickName());
		map.put("gender", vo.getGender());
		map.put("point", vo.getPoint()+"");
		
		// JSON형식의 자료를 사용하기위해선 라이브러리를 하나 올려준다(기본으로 들어있는것이 버전이 맞지 않을수 있기에 아래 사이트에서 받아서 올려준다.
		// https://code.google.com/archive/p/json-simple/downloads   주소에 접속하여 첫번째파일인 json-simple-1.1.1.jar 을 다운받아서 'lib'폴더에 복사해 넣는다.
		
		// Map형식의 자료를 저장할 JSON 객체생성
		JSONObject memberInfo = new JSONObject(map);
		System.out.println(memberInfo);
		
		// JSON 객체를 저장할 배열을 생성 : vos를 만들었을경우는 생성해준다.(일반자료 한건(vo)인 경우는 생성해서 처리할 필요 없다.)
		JSONArray memberArray = new JSONArray();
		memberArray.add(memberInfo);		// 앞에서 json형식으로 저장한 map객체를 json배열객체에 add시켜준다.
		
		// 1건의 자료(vo)를 더 넣어보자. 1건의 자료를 더 담아주기위한 처리.(map에 담은후 JSONObject에 담아준다 : 총 2건의 자료가 담겼다.)
		map = new HashMap<>();
		map.put("mid", "atom1234");
		map.put("name", "아톰맨");
		map.put("nickName", "아톰");
		map.put("gender", "중성");
		map.put("point", "10000");
		
		memberInfo = new JSONObject(map);  	// 앞에서 생성된 map의 새로운 자료를 JSONObject에 담아준다.
		memberArray.add(memberInfo);				// JSONOBject에 담긴자료를 JSONArray객체에 추가시켜준다.
		
		// vos와 같은 자료(JSONArray객체)를 모두 JSONArray배열객체에 모두 담았으면, 전체를 관리할수 있도록, 다시 JSONObject객체에 배열을 담아준다.
		JSONObject memberTotal = new JSONObject();
		memberTotal.put("members", memberArray);
		
		// JSON 문자열로 변경하여 전송할 준비를 한다.
		String str = memberTotal.toJSONString();
		System.out.println(memberTotal);
		
		response.getWriter().write(str);
	}
}
