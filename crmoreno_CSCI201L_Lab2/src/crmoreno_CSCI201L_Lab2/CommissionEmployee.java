package crmoreno_CSCI201L_Lab2;

public class CommissionEmployee extends SalariedEmployee{
	protected int salesTotal;
	protected double percent;
	
	public CommissionEmployee(String fn, String ln, String bd, int eid, String jt, String cp, double as, int st, double p) {
		super(fn, ln, bd, eid, jt, cp, as);
		salesTotal = st;
		percent = p;
	}
	
	public double getAnnualSalary() {
		return annualSalary + salesTotal*percent;
	}
}

