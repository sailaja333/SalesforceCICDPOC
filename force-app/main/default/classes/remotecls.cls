global class remotecls{
    @RemoteAction
    global static string getData(string recId){
        Account acc = [Select id, name from Account where Id=:recId];
        return acc.name;
    }
}