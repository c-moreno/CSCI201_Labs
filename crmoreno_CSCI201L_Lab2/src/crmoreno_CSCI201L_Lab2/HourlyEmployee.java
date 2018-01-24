package crmoreno_CSCI201L_Lab2;

public class HourlyEmployee extends Employee {
	protected double hourlyRate;
	protected double numberHours;
	
	public HourlyEmployee(String fn, String ln, String bd, int eid, String jt, String cp, double hr, double nh) {
		super(fn, ln, bd, eid, jt, cp);
		hourlyRate = hr;
		numberHours = nh;
	}
	
	public double getAnnualSalary(){
		return hourlyRate*numberHours*52;
	}
}
