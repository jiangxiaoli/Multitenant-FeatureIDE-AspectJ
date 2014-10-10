package tenantClasses;

public class EB_Story extends GeneralItem {
	private int id;
	private String status;
	private float points;
	private String user;
	private String feature;
	private String bus_val;
	private int sprint_id;
	
	public EB_Story(int id,String stat,int pt,String u,String f,String b_v) {
		this.id=id;
		this.status = stat;
		this.points = pt;
		this.user = u;
		this.feature = f;
		this.bus_val = b_v;
		
	}
	
	public float getPoints(){
		return this.points;
	}
	
	public String getStatus(){ 
		return this.status;	
	}
	
	public void linkSprint(int sprint_id){
		this.sprint_id = sprint_id;
	}
	
	public void setStatus(String stat){
		status = stat;
	}	
	
	public void setPoints(float points){
		this.points = points;
	}
	
	public void setUser(String user){
		this.user = user;
	}
	
	public void setFeature(String feature){
		this.feature = feature;
	}
	
	public void setBus_val(String bus_val){
		this.bus_val = bus_val;
	}

	
	
	public void printStory() {
		System.out.println("-------Story #" + id + "----------------------");
		System.out.println("As a " + user);
		System.out.println("I want " + feature);
		System.out.println("So that " + bus_val);
		System.out.println("");
		System.out.println("Status: " + status);
		System.out.println("Points: " + points);
		System.out.println("Belongs to Sprint (id): " + sprint_id);
	}
}
