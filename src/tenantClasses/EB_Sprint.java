package tenantClasses;

public class EB_Sprint extends GeneralPackage{
	private String name;
	private String st_d;
	private int dur;
	private int t_vel;
	private boolean comp;
	
	public EB_Sprint(String n, String s_d, int d) {
		this.name = n;
		this.st_d = s_d;
		this.dur = d;
		this.t_vel = 0;
		this.comp = false;
	}
	
	public void printSprint() {
		System.out.println("-------Sprint " + name + "-------");
		//System.out.println("Sprint named '"+ input+"' has been created with the following attributes:");
		System.out.println("Start Date: " + st_d);
		System.out.println("Duration: " + dur + " days");
		System.out.println("Team Velocity: " + t_vel);
		System.out.println("Is Complete?: " + comp);
	}
}
