import { LightningElement, track, } from 'lwc';
import getContact from '@salesforce/apex/october28class.getContact';
export default class October29 extends LightningElement {
    @track contacts;

    handleClick(){
         getContact().then(result => {
                    this.contacts = result;
                })
                .catch(error => {
                    this.error = error;
                });
    }
}