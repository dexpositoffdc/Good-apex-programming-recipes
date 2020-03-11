CASE 3 - Use of contexts to skip validations
--------------------------------------------

- Push the code to a development org
- Execute the following script in the developer console


//-------------------------------------------------------------------------
// Call AccountService class. It skips the triggers validations to process the accounts. But there is an unexpected exception in the middle.
Account acc = [SELECT Id, NumberOfEmployees FROM Account LIMIT 1];
Id accountId = acc.Id;
AccountService.processAccounts(new Set<Id>{ accountId });

// Due to the unexpected exception the context is not reset to false at the end.
System.assertEquals(true, Context.isInternalContext());

// As the context has been kept activated then I have a security problem and I can skip the trigger validations
acc.NumberOfEmployees = -5;
update acc;
//-------------------------------------------------------------------------


- The service methods does not reset the internalContext properly due an unexpected error. So, after that the user can skip all the triggers validatiosn (God mode)