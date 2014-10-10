import java.util.HashMap;

import tenantClasses.*;

public class Tenant {
	public GeneralPackage generalPackage; //each tenant has only one package
	public HashMap<Integer,GeneralItem> generalItems; //store items with id in Map
	
	public Tenant(){
		generalItems = new HashMap();
	}
	
	public void createTackablePackage(){}
	
	public void createItem(){}
	
	public void updatePackage(){}
	
	public void updateItem(){}
	
	public void linkItem(){}
	
	public void trackProgress(){}
	
	public static void main(String[] args) 
	{
		
		
		Tenant tenant = new Tenant();
		
	    tenant.createTackablePackage();
		
		tenant.updatePackage();
		
		tenant.createItem();
		tenant.createItem();
		//tenant.createItem();
		
		tenant.updateItem();
		
		tenant.linkItem();
		tenant.linkItem();
		
		tenant.trackProgress();
		
		
		
	} 
		
	
}