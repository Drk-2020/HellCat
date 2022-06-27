trigger ratingWarmSetIndustryBanking on Account (before insert) {
    for(Account a : trigger.new){
        if(a.rating =='warm'){
            a.industry = 'Banking';
        }
    }

}