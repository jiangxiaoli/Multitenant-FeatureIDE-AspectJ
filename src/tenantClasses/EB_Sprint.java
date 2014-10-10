package tenantClasses;

import java.util.ArrayList;

public class EB_Sprint extends GeneralPackage{
	private int id;
	private String name;
	private String st_d;
	private int dur;
	private int t_vel;
	private boolean comp;
	private ArrayList<EB_Story> stories;
	private float pointsFromStory;
	private float pointsCompleted;
	
	public EB_Sprint(int id, String n, String s_d, int d) {
		this.id = id;
		this.name = n;
		this.st_d = s_d;
		this.dur = d;
		this.t_vel = 0;
		this.comp = false;
		stories = new ArrayList<EB_Story>();
	}
	
	private void calPoints(){
		pointsFromStory = 0;
		pointsCompleted = 0;
		if(stories.size() != 0){
			for(int i = 0; i < stories.size(); i++){
				pointsFromStory += stories.get(i).getPoints();
				if(stories.get(i).getStatus().equals("Completed")){
					pointsCompleted += stories.get(i).getPoints();
				}
				
			}
		}
	}
	
	public void setName(String name){
		
		this.name = name;
	}
	
	public void setSt_d(String st_d){
		this.st_d = st_d;
	}
	
	public void setDur(int dur){
		this.dur = dur;
	}
	
	public void setT_vel(int t_vel){
		this.t_vel = t_vel;
	}
	
	public void setT_comp(Boolean comp){
		this.comp = comp;
	}
	
	public void linkStory(EB_Story story){
		stories.add(story);
		
		//update sprint points
		calPoints();
		
		//check the sprint status based on the story set
		checkComp();
		
	}
	
	public void unlinkStory(EB_Story story){
		if(stories.contains(story)){
			stories.remove(story);
			calPoints();
		}	
		
		//check the sprint status based on the story set
		checkComp();
		
	}
	
	private void checkComp(){
		comp = true;
		if(stories!=null){
			for(EB_Story s: stories){
				if(!s.getStatus().equals("Completed") ){
					comp = false;
				}
			}
		}
	}
	
	public void printSprint() {
		System.out.println("-------Sprint " + id + "-------");
		//System.out.println("Sprint named '"+ input+"' has been created with the following attributes:");
		System.out.println("Name: " + name);
		System.out.println("Start Date: " + st_d);
		System.out.println("Duration: " + dur + " days");
		System.out.println("Team Velocity: " + t_vel);
		System.out.println("Is Complete?: " + comp);
		System.out.println("Points From Story: " + pointsFromStory);
		System.out.println("Points Completed: " + pointsCompleted);
		
		if(stories!=null){
			System.out.println("Linked Stories: ");
			for(EB_Story story: stories){
				story.printStory();
			}
		}
		
	}
	
	
}
