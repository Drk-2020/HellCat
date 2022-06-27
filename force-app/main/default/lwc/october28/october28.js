import { LightningElement,wire } from 'lwc';
import getContact from '@salesforce/apex/october28class.getContact';

export default class October28 extends LightningElement {
    @wire(getContact) ramVar;
}