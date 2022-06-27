import { LightningElement } from 'lwc';

export default class October29_2 extends LightningElement {
    handleClick(){
        //this.template.querySelector('xyz').itsMethod()
        this.template.querySelector("c-this-is-child-component").methodTobeCalledFromParent();
    }
}