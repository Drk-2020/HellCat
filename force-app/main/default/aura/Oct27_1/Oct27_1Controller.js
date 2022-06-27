({
	handleClick : function(component, event, helper) {
		//this is parent component JS and we want to call child JS from here
		var childCMPtobeCalled = component.find("childAuraId");
        var message = childCMPtobeCalled.childMessageMethod();
	}
})