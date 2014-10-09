import tenantClasses.*;

public class Tenant {
	public GeneralPackage generalPackage; //each tenant has only one package
	public GeneralItem generalItem;//each tenant has only one item
	

	public void print()
	{
		System.out.println("");
	}
	
	/*public void setPackage(GeneralPackage p){
		this.generalPackage = p;
	}
	
	public void setItem(GeneralItem i){
		this.generalItem = i;
	}*/
	
	public void createTackablePackage(){
		//System.out.println("create package succeed!");
		//System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		System.out.println();
	}
	
	public void createOrUpdateItem(){
		//System.out.println("create item succeed!");	
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		System.out.println();
	}
	
	public void updatePackage(){
		//System.out.println("update package succeed!");	
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		System.out.println();
		
	}
	
	public void trackProgress(){}
	
	public static void main(String[] args) 
	{
		//new Main().print();
		
		Tenant tenant = new Tenant();
		
	    tenant.createTackablePackage();
		
		
		//tenant.createOrUpdateItem();
		
		//tenant.updatePackage();
		
		
		
	} 
		
	
}