import { LightningElement } from 'lwc';

export default class October29_1 extends LightningElement {
    buttonSelected;
    handleCustomEvent(event){
        this.buttonSelected = event.detail;
    }
}