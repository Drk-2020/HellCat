import { LightningElement,api } from 'lwc';

export default class ThisIsChildComponent extends LightningElement {
  
    name = 'Abhishek';

    @api methodTobeCalledFromParent(){

        this.name = 'Abhishek Kakad';
        alert('This is child JS called from Parent')
    }
}