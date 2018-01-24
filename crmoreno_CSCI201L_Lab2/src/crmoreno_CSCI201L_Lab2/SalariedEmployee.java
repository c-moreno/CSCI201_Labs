package crmoreno_CSCI201L_Lab2;

public class SalariedEmployee extends Employee {
	protected double annualSalary;
	
	public SalariedEmployee(String fn, String ln, String bd, int eid, String jt, String cp, double as) {
		super(fn, ln, bd, eid, jt, cp);
		annualSalary = as;
	}
	
	public double getAnnualSalary(){
		return annualSalary;
	}
}
