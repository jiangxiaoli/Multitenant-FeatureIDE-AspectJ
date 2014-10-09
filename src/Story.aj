import java.util.Scanner;

import tenantClasses.*;

public aspect Story {
	before(Tenant t): target(t) && call(void Tenant.createOrUpdateItem()){
		
	    System.out.println("Create a new Story:");
		
		Scanner reader = new Scanner(System.in);
		System.out.print("Story ID: ");
		int input = reader.nextInt();
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
		//reader.close();

		System.out.println("Success!");
		//emain.new Main();
		EB_Story newStory = new EB_Story(input,input2,pt,input3,input4,input5);
		newStory.printStory();
		t.generalItem =(GeneralItem) newStory;
		
		
		
	}
}