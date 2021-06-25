package com.aman.businessbean;

public class StudentBean 
{
	private Integer rollNumber;
	private String firstName;
	private String lastName;
	@Override
	public String toString() {
		return "StudentBean [rollNumber=" + rollNumber + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", percentage=" + percentage + "]";
	}
	private Double percentage;
	public Integer getRollNumber() {
		return rollNumber;
	}
	public void setRollNumber(Integer rollNumber) {
		this.rollNumber = rollNumber;
	}
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Double getPercentage() {
		return percentage;
	}
	public void setPercentage(Double percentage) {
		this.percentage = percentage;
	}
	


}
