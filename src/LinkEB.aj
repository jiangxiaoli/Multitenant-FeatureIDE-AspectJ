import java.util.HashMap;
import java.util.Scanner;

import tenantClasses.*;

public aspect LinkEB {
	
	before(Tenant t): target(t) && call(void Tenant.linkItem()){
		System.out.println("Link a Story to Srpint:");
		
		HashMap<Integer,GeneralItem> itemMap = t.generalItems;
		
		if(itemMap != null){
			
			//printMap(itemMap);//print story list
			
			//choose story to link
			Scanner reader = new Scanner(System.in);
			
			System.out.print("Select the story to link (id):");
			int input_id = reader.nextInt();
			
			//get the story form Map
			EB_Story story = (EB_Story) itemMap.get(input_id);
			
			System.out.print("Set the story link to which sprint:");
			int input_sid = reader.nextInt();
			
			story.linkSprint(input_sid);
			
			//story.printStory();
			
			EB_Sprint sprint = (EB_Sprint) t.generalPackage;
			
			sprint.linkStory(story);
			
			//sprint.printSprint();
			
			System.out.println("Link Story"+ input_id+" to Srpint"+input_sid+":");
			System.out.println("==================================================");
		} else {
			System.out.println("No Story to link..");
		}
				
	}
	
	public void printMap(HashMap<Integer,GeneralItem> map) {
		for(int key: map.keySet()){
            EB_Story story = (EB_Story) map.get(key);
            story.printStory();
        }
	    
	}
		
}
