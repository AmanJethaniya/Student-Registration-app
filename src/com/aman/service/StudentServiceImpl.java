package com.aman.service;
import java.util.List;
import com.aman.businessbean.StudentBean;
import com.aman.dao.StudentDao;
import com.aman.dao.StudentDaoImpl;

public class StudentServiceImpl implements StudentService
{
	
	@Override
	public Integer addStudent(StudentBean studentBean) throws Exception
	{
		StudentDao studentDao=new StudentDaoImpl();
		Integer rollNum=studentDao.addStudent(studentBean);
		return rollNum;
	}

	@Override
	public List<StudentBean> getStudentList() throws Exception
	{
		StudentDao studentDao=new StudentDaoImpl();
		List<StudentBean> list=studentDao.getStudentList();
		return list;
	}
	@Override
	public Integer deleteStudentByRollno(Integer rollno) throws Exception
	{
		StudentDao studentDao=new StudentDaoImpl();
		Integer rollnum=studentDao.deleteStudentByRollno(rollno);
		return rollnum;
	}

}
