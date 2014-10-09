package tenantClasses;

public class EB_Story extends GeneralItem {
	private int id;
	private String status;
	private int points;
	private String user;
	private String feature;
	private String bus_val;
	
	public EB_Story(int id,String stat,int pt,String u,String f,String b_v) {
		this.id=id;
		this.status = stat;
		this.points = pt;
		this.user = u;
		this.feature = f;
		this.bus_val = b_v;
		
	}
	
	public void printStory() {
		System.out.println("-------Story #" + id + "-------");
		System.out.println("As a " + user);
		System.out.println("I want " + feature);
		System.out.println("So that " + bus_val);
		System.out.println("----------------------------------");
		System.out.println("Status: " + status);
		System.out.println("Points: " + points);
	}
}
