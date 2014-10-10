import java.util.Scanner;

import tenantClasses.*;

public aspect Sprint {
	before(Tenant t): target(t) && call(void Tenant.createTackablePackage()){
		System.out.println("Create a new Sprint:");
		
		Scanner reader = new Scanner(System.in);
		System.out.print("Sprint id: ");
		int input_id = reader.nextInt();
		System.out.print("Sprint Name: ");
		String input = reader.next();
		System.out.print("Start Date: ");
		String input2 = reader.next();
		System.out.print("Duration: ");
		int input3 = reader.nextInt();

		EB_Sprint newSprint = new EB_Sprint(input_id,input,input2,input3);
		t.generalPackage = (GeneralPackage) newSprint;
		
		System.out.println("Create New Sprint Success!");
		newSprint.printSprint();
		
		System.out.println("================================================");
	}
	
	before(Tenant t): target(t) && call(void Tenant.updatePackage()){
		
		EB_Sprint current = (EB_Sprint) t.generalPackage;
		
		System.out.println("Show current sprint");
		if(current != null){
			current.printSprint();
			System.out.print("Update Input: Name(1); Start Date(2); Duration(3); Team Velocity(4); isComplete(5):");
			Scanner reader = new Scanner(System.in);
			int input = reader.nextInt();
			switch(input){
				case 1: System.out.print("Change Sprint Name: ");
						String input_name = reader.next();
						current.setName(input_name);
						break;
				case 2: System.out.print("Change Sprint Start Date: ");
						String input_st_d = reader.next();
						current.setSt_d(input_st_d);
						break;
				case 3: System.out.print("Change Sprint Duration: ");
						int input_Duration = reader.nextInt();
						current.setDur(input_Duration);
						break;
				case 4: System.out.print("Change Sprint Team Velocity: ");
						int input_tvel = reader.nextInt();
						current.setT_vel(input_tvel);
						break;
				case 5: System.out.print("Change Sprint isComplete: ");
						Boolean input_isComplete = reader.nextBoolean();
						current.setT_comp(input_isComplete);
						break;
				default: System.out.println("please input between 1-5");
			}
			
			System.out.println("Update Sprint Success!");
			current.printSprint();
		} else  {
			System.out.println("There is no active sprint, please create one first");
		}
		System.out.println("================================================");
		
	}
	
	
	
	
}
