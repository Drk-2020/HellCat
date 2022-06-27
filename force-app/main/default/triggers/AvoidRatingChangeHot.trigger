trigger AvoidRatingChangeHot on Account (before insert) {
    for(integer i=0;i<trigger.new.size(); i++){
        if(trigger.old[i].Rating == 'Hot' && trigger.new[i].Rating != 'Hot'){
            trigger.new[i].addError('You Cannot Change rating of Account from Hot. Please Contact Your System Admin');
            
        }
    }
}