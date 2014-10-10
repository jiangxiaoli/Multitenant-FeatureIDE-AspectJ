import java.util.HashMap;

import tenantClasses.EB_Story;
import tenantClasses.GeneralItem;


public aspect EBStory {
	after(Tenant t): target(t) && call(void Tenant.trackProgress()){
		
		HashMap<Integer,GeneralItem> itemMap = t.generalItems;
		
		System.out.println("Show current Story list");
		if(itemMap != null){		
			printMap(itemMap);//print story list
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
