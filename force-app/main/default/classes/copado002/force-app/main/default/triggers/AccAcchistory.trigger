//26 . @ 1
trigger AccAcchistory on Account (after insert, after update) {
       if(trigger.isafter&&trigger.isupdate){
        list< account_history__c> AHList = new List< account_history__c>();
        for(Account a : trigger.new){
            if(a.Name!=trigger.oldmap.get(a.id).Name){
                account_history__c AH = new account_history__c ();
                AH.AHistory__c=a.id;
                AH.Name_of_the_Field__c = 'Name';
                AH.old_field_value__c = trigger.oldmap.get(a.id).Name;
                AH.New_field_value__c = a.Name;
                AH.date_for_create_records__c = a.LastModifiedDate.date();
                AHList.add(AH);
            }
            if(a.Phone!=trigger.oldmap.get(a.id).Phone){
                account_history__c AH = new account_history__c ();
                AH.AHistory__c=a.id;
                AH.Name_of_the_Field__c = 'Phone';
                AH.old_field_value__c = trigger.oldmap.get(a.id).Phone;
                AH.New_field_value__c= a.Phone;
                AH.date_for_create_records__c = a.LastModifiedDate.date();
                AHList.add(AH);
            }
            if(a.Email__c!=trigger.oldmap.get(a.id).Email__c){
                account_history__c AH = new account_history__c ();
                AH.AHistory__c=a.id;
                AH.Name_of_the_Field__c = 'Email';
                AH.old_field_value__c = trigger.oldmap.get(a.id).Email__c;
                AH.New_field_value__c = a.Email__c;
                AH.date_for_create_records__c = a.LastModifiedDate.date();
                AHList.add(AH);
            }
            if(a.BillingStreet!=trigger.oldmap.get(a.id).BillingStreet){
                account_history__c AH = new account_history__c ();
                AH.AHistory__c=a.id;
                AH.Name_of_the_Field__c = 'BillingStreet';
                AH.old_field_value__c = trigger.oldmap.get(a.id).BillingStreet;
                AH.New_field_value__c = a.BillingStreet;
                AH.date_for_create_records__c = a.LastModifiedDate.date();
                AHList.add(AH);
            }
            if(a.BillingCity!=trigger.oldmap.get(a.id).BillingCity){
                account_history__c AH = new account_history__c ();
                AH.AHistory__c=a.id;
                AH.Name_of_the_Field__c = 'BillingCity';
                AH.old_field_value__c = trigger.oldmap.get(a.id).BillingCity;
                AH.New_field_value__c = a.BillingCity;
                AH.date_for_create_records__c = a.LastModifiedDate.date();
                AHList.add(AH);
            }
            if(a.BillingState!=trigger.oldmap.get(a.id).BillingState){
                account_history__c AH = new account_history__c ();
                AH.AHistory__c=a.id; 
                AH.Name_of_the_Field__c = 'BillingState';
                AH.old_field_value__c = trigger.oldmap.get(a.id).BillingState;
                AH.New_field_value__c = a.BillingState;
                AH.date_for_create_records__c = a.LastModifiedDate.date();
                AHList.add(AH);
            }
            if(a.BillingCountry!=trigger.oldmap.get(a.id).BillingCountry){
                account_history__c AH = new account_history__c ();
                AH.AHistory__c=a.id;
                AH.Name_of_the_Field__c = 'BillingCountry';
                AH.old_field_value__c = trigger.oldmap.get(a.id).BillingCountry;
                AH.New_field_value__c = a.BillingCountry;
                AH.date_for_create_records__c = a.LastModifiedDate.date();
                AHList.add(AH);
            }
            if(a.BillingPostalCode!=trigger.oldmap.get(a.id).BillingPostalCode){
                account_history__c AH = new account_history__c ();
                AH.AHistory__c=a.id;
                AH.Name_of_the_Field__c = 'BillingPostalCode';
                AH.old_field_value__c = trigger.oldmap.get(a.id).BillingPostalCode;
                AH.New_field_value__c = a.BillingPostalCode;
                AH.date_for_create_records__c = a.LastModifiedDate.date();
                AHList.add(AH);
            }
        }
        if(AHList.size()>0){
        insert AHList;
        }
    }
}