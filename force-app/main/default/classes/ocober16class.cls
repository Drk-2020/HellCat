public class ocober16class {
    
    @auraEnabled
    public static Id createContact(string fname ,string lname , string email ,string phone, string accountId){
        contact con = new contact();
        con.firstname = fname;
        con.Lastname = lname;
        con.Email = email;
        con.phone = phone;
        con.accountId = accountId;										
        Insert con;
        return con.id;
    }

}