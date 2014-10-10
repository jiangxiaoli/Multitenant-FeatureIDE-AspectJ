import java.util.Scanner;

import tenantClasses.*;

public aspect Board {
	before(Tenant t): target(t) && call(void Tenant.createTackablePackage()){
		Scanner reader = new Scanner(System.in);
		System.out.print("Board Name: ");
		String input = reader.next();
		System.out.print("Start Date: ");
		String input2 = reader.next();
		System.out.print("Duration: ");
		int input3 = reader.nextInt();
		System.out.println("Success!");
		
	    //reader.close();
		
		KB_Board newBoard = new KB_Board(input,input2,input3);
		newBoard.printBoard();
		t.generalPackage = (GeneralPackage) newBoard;
		
	}
	
	before(Tenant t): target(t) && call(void Tenant.updatePackage()){
		
		KB_Board current = (KB_Board) t.generalPackage;
		
		System.out.println("Show current board");
		if(current != null){
			current.printBoard();
			System.out.println("Now update the board:");
			t.createTackablePackage();
		} else  {
			System.out.println("There is no active board, please create one first");
		}
		
	}
}
