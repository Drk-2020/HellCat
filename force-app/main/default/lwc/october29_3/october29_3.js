import { LightningElement } from 'lwc';

export default class October_3 extends LightningElement {
    handleClick(event){
      const buttonName = event.target.label;
      event.preventDefault();
     
      const selectEvent = new CustomEvent('mycustomevent', {
          detail: buttonName
      });
     this.dispatchEvent(selectEvent);
    }
}