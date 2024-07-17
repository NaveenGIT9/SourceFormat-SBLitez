public class AccountOperations {

    // Method to create a new Account
    public static Account createAccount(String name, String phone, String industry) {
        Account acc = new Account(Name = name, Phone = phone, Industry = industry);
        insert acc;
        return acc;
    }

    // Method to update an existing Account
    public static Account updateAccount(Id accountId, String newName, String newPhone, String newIndustry) {
        Account acc = [SELECT Id, Name, Phone, Industry FROM Account WHERE Id = :accountId LIMIT 1];
        acc.Name = newName;
        acc.Phone = newPhone;
        acc.Industry = newIndustry;
        update acc;
        return acc;
    }

    // Method to delete an Account by Id
    public static void deleteAccount(Id accountId) {
        Account acc = [SELECT Id FROM Account WHERE Id = :accountId LIMIT 1];
        delete acc;
    }

    // Method to retrieve an Account by Id
    public static Account getAccountById(Id accountId) {
        return [SELECT Id, Name, Phone, Industry FROM Account WHERE Id = :accountId LIMIT 1];
    }
}