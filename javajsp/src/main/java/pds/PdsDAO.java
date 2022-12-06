package pds;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.BoardVO;
import conn.GetConn;

public class PdsDAO {
	// 싱글톤을 이용한 DB연결 객체 연결하기...
	GetConn getConn = GetConn.getInstance();
	
	private Connection conn = getConn.getConn();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	PdsVO vo = null;

	// 파트별 전체 건수 가져오기
	public int totRecCnt(String part) {
		
		int totRecCnt = 0;
		try {
			if(part.equals("전체")) {
				sql = "select count(*) as cnt from pds";
				pstmt = conn.prepareStatement(sql);
			}
			else {
				sql = "select count(*) as cnt from pds where part = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, part);
			}
			rs = pstmt.executeQuery();
			
			rs.next();
			totRecCnt = rs.getInt("cnt");
		} catch (SQLException e) {
			System.out.println("SQL 에러 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		return totRecCnt;
	}

	public ArrayList<PdsVO> getPdsList(int startIndexNo, int pageSize, String part) {
		ArrayList<PdsVO> vos = new ArrayList<>();
		try {
			if(part.equals("전체")) {
				sql =	"SELECT 	*,datediff(now(), fDate) as day_diff, "
						+ "timestampdiff(hour, fDate, now()) as hour_diff "
						+ "FROM pds order by idx desc "
						+ "limit ?,?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, startIndexNo);
				pstmt.setInt(2, pageSize);
			}
			else {
				sql =	"SELECT 	*,datediff(now(), fDate) as day_diff, "
						+ "timestampdiff(hour, fDate, now()) as hour_diff "
						+ "FROM pds where part = ? order by idx desc "
						+ "limit ?,?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, part);
				pstmt.setInt(2, startIndexNo);
				pstmt.setInt(3, pageSize);
			}
				rs = pstmt.executeQuery();
					
			while(rs.next()) {
				vo = new PdsVO();
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setNickName(rs.getString("nickName"));
				vo.setfName(rs.getString("fName"));
				vo.setfSName(rs.getString("fSName"));
				vo.setfSize(rs.getInt("fSize"));
				vo.setTitle(rs.getString("title"));
				vo.setPart(rs.getString("part"));
				vo.setPwd(rs.getString("pwd"));
				vo.setfDate(rs.getString("fDate"));
				vo.setDownNum(rs.getInt("downNum"));
				vo.setOpenSw(rs.getString("openSw"));
				vo.setContent(rs.getString("content"));
				vo.setHostIp(rs.getString("hostIp"));
				
				vo.setDay_diff(rs.getInt("day_diff"));
				vo.setHour_diff(rs.getInt("hour_diff"));
				
				vos.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("SQL 에러 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		return vos;
	}

	public int setPdsInputOk(PdsVO vo) {
		int res = 0;
		try {
			sql = "insert into pds values (default,?,?,?,?,?,?,?,?,default,default,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getNickName());
			pstmt.setString(3, vo.getfName());
			pstmt.setString(4, vo.getfSName());
			pstmt.setInt(5, vo.getfSize());
			pstmt.setString(6, vo.getTitle());
			pstmt.setString(7, vo.getPart());
			pstmt.setString(8, vo.getPwd());
			pstmt.setString(9, vo.getOpenSw());
			pstmt.setString(10, vo.getContent());
			pstmt.setString(11, vo.getHostIp());
			pstmt.executeUpdate();
			res = 1;
		} catch (SQLException e) {
			System.out.println("SQL 에러 : " + e.getMessage());
		} finally {
			getConn.pstmtClose();
		}
		
		return res;
	}
	
	// 개별 자료 검색(idx를 이용한)
	public PdsVO getIdxSearch(int idx) {
		vo = new PdsVO();
		
		try {
			sql = "select * from pds where idx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			
			rs.next();
			
			vo.setIdx(rs.getInt("idx"));
			vo.setMid(rs.getString("mid"));
			vo.setNickName(rs.getString("nickName"));
			vo.setfName(rs.getString("fName"));
			vo.setfSName(rs.getString("fSName"));
			vo.setfSize(rs.getInt("fSize"));
			vo.setTitle(rs.getString("title"));
			vo.setPart(rs.getString("part"));
			vo.setPwd(rs.getString("pwd"));
			vo.setfDate(rs.getString("fDate"));
			vo.setDownNum(rs.getInt("downNum"));
			vo.setOpenSw(rs.getString("openSw"));
			vo.setContent(rs.getString("content"));
			vo.setHostIp(rs.getString("hostIp"));
		} catch (SQLException e) {
			System.out.println("SQL 에러 : " + e.getMessage());
		} finally {
			getConn.rsClose();
		}
		
		return vo;
	}

	public String setPdsDelete(int idx) {
		String res = "0";
		
		try {
			sql = "delete from pds where idx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.executeUpdate();
			res = "1";
		} catch (SQLException e) {
			System.out.println("SQL 에러 : " + e.getMessage());
		} finally {
			getConn.pstmtClose();
		}
		return res;
	}



}
