import java.util.Scanner;
import tenantClasses.*;

public aspect Sprint {
	before(Tenant t): target(t) && call(void Tenant.createTackablePackage()){
		Scanner reader = new Scanner(System.in);
		System.out.print("Sprint Name: ");
		String input = reader.next();
		System.out.print("Start Date: ");
		String input2 = reader.next();
		System.out.print("Duration: ");
		int input3 = reader.nextInt();
		System.out.println("Success!");
		
	    //reader.close();
		
		EB_Sprint newSprint = new EB_Sprint(input,input2,input3);
		newSprint.printSprint();
		t.generalPackage = (GeneralPackage) newSprint;
		
	}
	
	before(Tenant t): target(t) && call(void Tenant.updatePackage()){
		
		EB_Sprint current = (EB_Sprint) t.generalPackage;
		
		System.out.println("Show current sprint");
		if(current != null){
			current.printSprint();
			System.out.println("Now update the sprint:");
			t.createTackablePackage();
		} else  {
			System.out.println("There is no active sprint, please create one first");
		}
		
	}
	
	
	
	
}