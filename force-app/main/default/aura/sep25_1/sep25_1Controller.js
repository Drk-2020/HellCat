({
	
		handleClick : function(component, event, helper) {
		var bName = event.getSource().get("v.label");
  
         var dEvent = component.getEvent("cmpEvent");
        dEvent.setParams({
            "ButtonName" : bName});
        dEvent.fire();
	}
})