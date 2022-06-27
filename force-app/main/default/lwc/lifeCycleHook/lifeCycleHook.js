import { LightningElement } from 'lwc';

export default class LifeCycleHook extends LightningElement {
    constructor(){
        super(); 
        alert('here');
    }
    connectedCallback(){
        alert('here connectedCallback');
    }
    renderedCallback(){
    alert('here renderedCallback');
    }
}