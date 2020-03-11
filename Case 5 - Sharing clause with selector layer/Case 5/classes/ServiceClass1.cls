public with sharing class ServiceClass1
{
	public ServiceClass1() {}

	public static void serviceMethod(Set<Id> accountIds)
	{
		// Retrieve a list of accounts
		AccountsSelector accountSelector = new AccountsSelector();
		List<Account> accounts = accountSelector.getAccountById(accountIds);

		// Do some processing with the accounts
		// ...
	}
}