package com.aman.dao;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import com.aman.businessbean.StudentBean;
import com.aman.entity.StudentEntity;

public class StudentDaoImpl implements StudentDao {
	@Override
	public Integer addStudent(StudentBean studentBean) throws Exception 
	{
		Integer rollNum=null;
		EntityManager entityManager=null;
		try 
		{
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("unit2");
		entityManager = entityManagerFactory.createEntityManager();
		
		StudentEntity studentEntity=new StudentEntity();
		studentEntity.setRollNumber(studentBean.getRollNumber());
		studentEntity.setFirstName(studentBean.getFirstName());
		studentEntity.setLastName(studentBean.getLastName());
		studentEntity.setPercentage(studentBean.getPercentage());
		
		entityManager.getTransaction().begin();
		entityManager.merge(studentEntity);
		entityManager.getTransaction().commit();
		
		rollNum=studentEntity.getRollNumber();
		}
		catch (Exception exception) 
		{

			throw exception;
		} finally
		{
			if (entityManager != null) 
			{
				entityManager.close();
			}
		}
		
		return rollNum;
	}

	@Override
	public List<StudentBean> getStudentList() throws Exception 
	{
		List<StudentBean> listStudent = new ArrayList<StudentBean>();
		EntityManager entityManager = null;
		try {
			EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("unit2");
			entityManager = entityManagerFactory.createEntityManager();
			
			Query query= entityManager.createQuery("SELECT s FROM StudentEntity s");
			List<StudentEntity> studentList=query.getResultList();
			for(StudentEntity s: studentList)
			{
				StudentBean bean=new StudentBean();
				bean.setRollNumber(s.getRollNumber());
				bean.setFirstName(s.getFirstName());
				bean.setLastName(s.getLastName());
				bean.setPercentage(s.getPercentage());
				listStudent.add(bean);
			}
			
			
		} catch (Exception exception) {

			throw exception;
		} finally {
			if (entityManager != null) {
				entityManager.close();
			}
		}
		
		return listStudent;
	}
	@Override
	public Integer deleteStudentByRollno(Integer rollno) throws Exception {
		
		EntityManager entityManager = null;
		Integer deletedRollno=null;
		EntityManagerFactory entityManagerFactory =Persistence.createEntityManagerFactory("unit2");
		entityManager = entityManagerFactory.createEntityManager();
		try {
			
			StudentEntity studentEntity=entityManager.find(StudentEntity.class, rollno);
			deletedRollno=studentEntity.getRollNumber();
			entityManager.getTransaction().begin();
			entityManager.remove(studentEntity);
			entityManager.getTransaction().commit();
			
		} catch (Exception exception) {

			throw exception;
		} finally {
			if (entityManager != null) {
				entityManager.close();
			}
		}

		return deletedRollno;
	}

	

}
	