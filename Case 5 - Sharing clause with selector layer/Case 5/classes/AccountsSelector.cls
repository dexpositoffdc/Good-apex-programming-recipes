public without sharing class AccountsSelector
{
	public List<Account> getAccountById(Set<Id> accountIds)
	{
		return [SELECT Id, Name FROM Account WHERE Id IN :accountIds];
	}
}