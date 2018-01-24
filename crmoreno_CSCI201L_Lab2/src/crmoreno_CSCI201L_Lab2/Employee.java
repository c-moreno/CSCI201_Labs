package crmoreno_CSCI201L_Lab2;

public abstract class Employee extends Person {
	protected int employeeID;
	protected String jobTitle;
	protected String company;
	
	public Employee(String fn, String ln, String bd, int eid, String jt, String cp) {
		super(fn, ln, bd);
		employeeID = eid;
		jobTitle = jt;
		company = cp;
	}
	
	public int getEmployeeID() {
		return employeeID;
	}
	
	public String getJobTitle() {
		return jobTitle;
	}
	
	public String getCompany() {
		return company;
	}
	
	public abstract double getAnnualSalary();
}
