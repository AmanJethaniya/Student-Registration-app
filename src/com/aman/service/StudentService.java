package com.aman.service;
import java.util.List;
import com.aman.businessbean.StudentBean;

public interface StudentService 
{
	Integer addStudent(StudentBean studentBean) throws Exception;
	List<StudentBean> getStudentList() throws Exception;
	public Integer deleteStudentByRollno(Integer rollno) throws Exception;
}
