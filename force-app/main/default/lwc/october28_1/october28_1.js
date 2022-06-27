import { LightningElement,wire } from 'lwc';
import getContact from '@salesforce/apex/october28class.getContact';
export default class October28_1 extends LightningElement {
    contacts; 

    @wire(getContact)
    ramMethod({ error, data }) {
        if (data) {
            this.contacts = data;
           
        } else if (error) {
            
        }
    }
}