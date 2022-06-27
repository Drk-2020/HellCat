({
    handleClick : function(component, event, helper) {
        // alert();  
        var firstnumber = parseInt(component.find("fnumber").get("v.value"));
        var secondnumber = parseInt(component.find("snumber").get("v.value"));
        var result = 0;
        
        var buttonName = event.getSource().get("v.label");
        if(buttonName == 'Addition'){
            result = firstnumber + secondnumber;
        }else if(buttonName == 'Subtraction'){
            result = firstnumber - secondnumber;
        }else if(buttonName == 'Multiplication'){
            result = firstnumber * secondnumber;
        }else if(buttonName == 'Division'){
            result = firstnumber / secondnumber;
        }
        component.set("v.myResult",result);
    }
})