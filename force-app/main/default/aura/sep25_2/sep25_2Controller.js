({
	handleComponentEvent : function(component, event, helper) {
		var buttonSelected = event.getParam("ButtonName");
        //alert("this is parent and the button clicked is "+buttonSelected);
        component.set("v.selectedOption",buttonSelected);
	}
})