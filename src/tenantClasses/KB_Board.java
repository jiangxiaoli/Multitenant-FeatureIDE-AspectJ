package tenantClasses;

public class KB_Board extends GeneralPackage {
	private String name;
	private String st_d;
	private int dur;
	private int t_vel;
	private boolean comp;
	
	public KB_Board(String n, String s_d, int d) {
		this.name = n;
		this.st_d = s_d;
		this.dur = d;
		this.t_vel = 0;
		this.comp = false;
	}
	
	public void printBoard() {
		System.out.println("-------Board " + name + "-------");
		//System.out.println("Board named '"+ input+"' has been created with the following attributes:");
		System.out.println("Start Date: " + st_d);
		System.out.println("Duration: " + dur + " days");
		System.out.println("Team Velocity: " + t_vel);
		System.out.println("Is Complete?: " + comp);
	}
}
