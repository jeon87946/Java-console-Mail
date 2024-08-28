<%@page import="kr.ac.kopo.member.vo.MemberVO"%>
<%@page import="kr.ac.kopo.member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 
 		request.setCharacterEncoding("utf-8");
    	
    	 String id = request.getParameter("id");
    	 String pwd = request.getParameter("password");
    	 String name = request.getParameter("name");
    	 String callno = request.getParameter("callno");
    	 
    	
    	MemberVO member = new MemberVO();
	  	 member.setId(id);
	  	 member.setPwd(pwd);
	  	 member.setName(name);
	  	 member.setcallno(callno);
	  	 
  	 System.out.println(member);
  	 
  	 //2
  	 MemberDAO memberDao = new MemberDAO();
  	 memberDao.insert(member);
%> 

<script>
	//3
		alert('회원가입을 완료하였습니다.')
		location.href = "/MAIL/member/login/maLogin.jsp"
</script>	     
