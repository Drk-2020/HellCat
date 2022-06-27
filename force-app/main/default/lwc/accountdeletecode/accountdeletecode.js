import { LightningElement, track, wire } from 'lwc';
import getAccountRecordsMethod from '@salesforce/apex/getAccountRecords.getAccountRecordsMethod';
import deleteSelectedRecord from '@salesforce/apex/getAccountRecords.deleteSelectedRecord';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';



export default class AccountListDelete extends LightningElement {

    @track columns =[ 
        {
            label: 'Name', fieldName: 'AccountURL', type: 'url',
            typeAttributes: {
                label: {
                    fieldName: 'Name'
                }
            }
        },
        {label: 'Phone', fieldName: 'Phone'}
    ];  

    @track accList;

    connectedCallback(){
        getAccountRecordsMethod().then(response => {
            this.accList = response;
            if(this.accList){
                this.accList.forEach(item => item['AccountURL'] = '/lightning/r/Account/' +item['Id'] +'/view');
                
            }
        }).catch(error => {
            console.log('Error: ' +error);
        });
    }
   
    listId =[];
    // store the IDs of selected rows in a list
    rowSelectHandler(event)
    {
        
       const selectedRows = event.detail.selectedRows;
        
       this.recordsCount = event.detail.selectedRows.length;
      
        console.log(selectedRows[0].Id);
       // deleteRecord(selectedRows[0].Id);
       this.listId.push(selectedRows[0].Id)   
        
    }
    
    deleteHandler(event)
    {
       
       this.deleteSelect(); 

    }

    deleteSelect(){
        deleteSelectedRecord({recordId: this.listId}).then(response => {
            console.log(response);
            this.template.querySelector('lightning-datatable').selectedRows = [];
        
        // showing success message
        
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Success!', 
                    message: this.recordsCount + ' Contacts deleted.', 
                    variant: 'success'
                }),
            );

        
        this.recordsCount = 0;

        // refreshing table data using refresh apex
        //refreshApex(this.accList);
       // eval("$A.get('e.force:refreshView').fire();");
        
        }).catch(error => {
            console.log('Error: ' +error);
        });
        
    }
 
    
}