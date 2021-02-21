trigger casetrigger on Case (before insert,after insert,before update,after update) {
    system.debug('>>caseutils.executeTriggerBln>>'+caseutils.executeTriggerBln);
    if(caseutils.executeTriggerBln){
    if(trigger.isInsert){
        if(Trigger.isBefore){
            for (Case cs : Trigger.new) {        
                cs.ownerid=UserInfo.getUserId();
            }
            system.debug('before insert');
        }
        if(Trigger.isAfter){
            system.debug('after insert');
        }
    }
    if(trigger.isUpdate){
        if(Trigger.isBefore){
            system.debug('before update');
            for (Case cs : Trigger.new) {
                Case oldCase = Trigger.oldMap.get(cs.Id);
                if(cs.OwnerId!=oldCase.OwnerId){
                    cs.ownerid='0054W00000Bnjth';
                    system.debug('owner change');                    
                }                
            }            
        }
        if(Trigger.isAfter){
            system.debug('after update');
        }
    }       
    }
}