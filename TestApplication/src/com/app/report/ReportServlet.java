package com.app.report;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.user.Student;
import com.google.gson.Gson;


@WebServlet("/report.do")
public class ReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Student> listOfStudent = getStudentData();
		  Gson gson = new Gson();
		  String jsonString = gson.toJson(listOfStudent);
		  response.setContentType("application/json");
		  response.getWriter().write(jsonString);
		 }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	private List<Student> getStudentData() {

		  List<Student> listOfStudent = new ArrayList<Student>();
		  Student s1 = new Student();
		  s1.setName("Bob");
		  s1.setComputerMark(70);
		  s1.setMathematicsMark(42);
		  s1.setGeographyMark(88);
		  s1.setHistoryMark(20);
		  s1.setEnglishMark(58);
		  listOfStudent.add(s1);

		  
		  Student s2 = new Student();
		  s1.setName("Mark");
		  s1.setComputerMark(75);
		  s1.setMathematicsMark(26);
		  s1.setGeographyMark(91);
		  s1.setHistoryMark(55);
		  s1.setEnglishMark(36);
		  listOfStudent.add(s2);

		  return listOfStudent;
}
		
	

	
	
	
	
	
	
	  

}
