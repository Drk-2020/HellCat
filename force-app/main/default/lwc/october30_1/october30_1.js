import { LightningElement } from 'lwc';

export default class October30_1 extends LightningElement {
    result = 0;
    calculateResult(event){
       this.result = event.detail;
    }
}