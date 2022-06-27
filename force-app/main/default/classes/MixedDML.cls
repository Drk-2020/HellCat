public class MixedDML {
     public static void useFutureMethod() {

        // First DML operation-Non-setup object

        Account a = new Account(Name='26sept2021');

        insert a;

        // This next operation (insert a user with a role) 

        // can't be mixed with the previous insert unless 

        // it is within a future method. 

        // Call future method to insert a user with a role.

        Util.insertUserWithRole('sj@jkk430.com', 'sjarlin', 'babajain@pr5555e.com','KK');        

    }

}