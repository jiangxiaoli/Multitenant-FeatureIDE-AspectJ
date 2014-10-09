import java.util.Scanner;

public aspect Project {
	after(): call(void Main.print()){
		Scanner reader = new Scanner(System.in);
		System.out.print("Project Name: ");
		String input = reader.next();
		System.out.print("Project Date: ");
		String date = reader.next();
		System.out.print("Date Type (Start or End): ");
		String type = reader.next();
		System.out.print("Deadline: ");
		String deadline = reader.next();
		
		System.out.println("Success!");
		System.out.println("-------Project " + input + "-------");
		System.out.println(type + " date: " + date);
		System.out.println("Deadline: " + deadline);
		
		
	}
}