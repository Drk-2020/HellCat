import { LightningElement,track } from 'lwc';

export default class HelloIndia extends LightningElement {
    @track greeting ='India';
    changeHandler(event){
        this.greeting=event.target.value;
    }
}