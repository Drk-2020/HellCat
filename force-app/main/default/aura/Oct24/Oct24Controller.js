({
	handleClick : function(component, event, helper) {
		var action = component.get("c.getoppty");
        //action.setParams({ firstName : cmp.get("v.firstName") });
		action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.oppList", response.getReturnValue());
                              
                //alert("From server: " + response.getReturnValue());
			}
            else if (state === "INCOMPLETE") {
                // do something
            }
            else if (state === "ERROR") {
                
            }
        });
		$A.enqueueAction(action);
	}
})