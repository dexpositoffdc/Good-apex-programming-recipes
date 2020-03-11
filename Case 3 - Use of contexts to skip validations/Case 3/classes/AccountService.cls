public with sharing class AccountService
{
	private static AccountServiceImpl accountServiceImplementation;

	private static AccountServiceImpl getAccountServiceImpl()
	{
		if (accountServiceImplementation == null)
			accountServiceImplementation = new AccountServiceImpl();

		return accountServiceImplementation;
	}

	public static void processAccounts(Set<Id> accountIds)
	{
		getAccountServiceImpl().processAccounts(accountIds);
	}
}