({
	handleClick : function(component, event, helper) {
		var buttonName = event.getSource().get("v.label");
        if(buttonName == 'first Lecture'){
            component.set("v.first",true);
            component.set("v.second",false);
            component.set("v.third",false);
        }
        else if(buttonName == 'second Lecture'){
            component.set("v.second",true);
            component.set("v.first",false);
             component.set("v.third",false);
        }
            else if(buttonName == 'third Lecture'){
            component.set("v.third",true);
            component.set("v.second",false);
                component.set("v.first",false);
        }
	}
})