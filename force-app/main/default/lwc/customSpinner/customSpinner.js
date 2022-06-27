import { LightningElement } from 'lwc';
export default class CustomSpinner extends LightningElement {
    
    isLoading= false;

    showSpinner(){
        if(!this.isLoading){
            this.isLoading = true
        }
        else{
            this.isLoading = false
        }


    }
}