import java.util.HashMap;
import java.util.Scanner;

import tenantClasses.*;

public aspect Story {
	before(Tenant t): target(t) && call(void Tenant.createItem()){
		
	    System.out.println("Create a new Story:");
		
		Scanner reader = new Scanner(System.in);
		System.out.print("Story ID: ");
		int input_id = reader.nextInt();
		System.out.print("Status (InProgress/Completed/Accepted): ");
		String input2 = reader.next();
		System.out.print("Points: ");
		int pt = reader.nextInt();
		System.out.print("As a: ");
		reader.nextLine();
		String input3 = reader.nextLine();
		System.out.print("I want: ");
		String input4 = reader.nextLine();
		System.out.print("So that: ");
		String input5 = reader.nextLine();


		System.out.println("Create New Story Success!");
		EB_Story newStory = new EB_Story(input_id,input2,pt,input3,input4,input5);
		newStory.printStory();
		
		//add story to tenant.generalItems
		t.generalItems.put(input_id, newStory);
		
		System.out.println("================================================");
		
	}
	
	
	before(Tenant t): target(t) && call(void Tenant.updateItem()){
		
		HashMap<Integer,GeneralItem> itemMap = t.generalItems;
		
		System.out.println("Show current Story list");

		
		if(itemMap != null){
			
			printMap(itemMap);//print story list
			
			//choose story to update
			Scanner reader = new Scanner(System.in);
			
			System.out.print("Select the story to update (id):");
			int input_id = reader.nextInt();
			
			//get the story form Map
			EB_Story story = (EB_Story) itemMap.get(input_id);
			
			System.out.print("Update Input: Status(1); Points(2); As(3); I want to(4); So I can(5):");
			int input = reader.nextInt();
			switch(input){
				case 1: System.out.print("Change Stroy Status: ");
						String input_Status = reader.nextLine();
						story.setStatus(input_Status);
						break;
				case 2: System.out.print("Change Story Points: ");
						float input_points = reader.nextFloat();
						story.setPoints(input_points);
						break;
				case 3: System.out.print("Change Story 'As': ");
						String input_User = reader.nextLine();
						story.setUser(input_User);
						break;
				case 4: System.out.print("Change Story 'I want to': ");
						String input_Feature = reader.nextLine();
						story.setFeature(input_Feature);
						break;
				case 5: System.out.print("Change Story 'So I can': ");
						String input_Bus_val = reader.nextLine();
						story.setBus_val(input_Bus_val);
						break;
				default: System.out.println("please input between 1-5");
			}
			
			System.out.println("Update Sprint Success!");
			story.printStory();

		} else  {
			System.out.println("There is no active story, please create one first");
		}
		System.out.println("================================================");
	}
	
	public void printMap(HashMap<Integer,GeneralItem> map) {
		for(int key: map.keySet()){
            EB_Story story = (EB_Story) map.get(key);
            story.printStory();
        }
	    
	}
	
	
	
}
