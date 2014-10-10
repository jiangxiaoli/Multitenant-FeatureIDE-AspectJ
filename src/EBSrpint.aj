import tenantClasses.EB_Sprint;


public aspect EBSrpint {
	before(Tenant t): target(t) && call(void Tenant.trackProgress()){
		
		EB_Sprint current = (EB_Sprint) t.generalPackage;
		
		System.out.println("Track current sprint progress: ");
		current.printSprint();
		
	}
}
