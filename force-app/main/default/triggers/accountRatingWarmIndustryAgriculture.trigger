trigger accountRatingWarmIndustryAgriculture on Account (before insert) {
//always thing about bulkifucation for thid use for loop.for every account lets call it a which is inside Trigger.new(context variable)
// always thing we putting records more then one. for loop is do one work in repative mode.(iteration) moving one logic repatively
    for (Account a : Trigger.new){
        if(a.rating == 'Warm'){
            a.industry = 'Agriculture';
            
        }
    }
}