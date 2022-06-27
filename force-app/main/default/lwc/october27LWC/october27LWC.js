import { LightningElement } from 'lwc';

export default class October27LWC extends LightningElement {
    firstnumber = 0;
    secondnumber = 0; 
    result = 0;
    handleClick(event){
     
     if(event.target.label == 'Addition'){
        const myres = this.firstnumber + this.secondnumber;
        event.preventDefault();
        
        const selectEvent = new CustomEvent('mycustomevent', {
            detail: myres
        });
       this.dispatchEvent(selectEvent);
     }   
     else if(event.target.label == 'Subtraction'){
        this.result = this.firstnumber - this.secondnumber;
     } 
     else if(event.target.label == 'Multiplication'){
        this.result = this.firstnumber * this.secondnumber;
     } 
     else if(event.target.label == 'Division'){
        this.result = this.firstnumber / this.secondnumber;
     } 
    }
    captureNumber(event){
        if(event.target.name == 'input1'){
            this.firstnumber = parseInt(event.target.value);
        }
        if(event.target.name == 'input2'){
            this.secondnumber = parseInt(event.target.value);
        }
    }
}