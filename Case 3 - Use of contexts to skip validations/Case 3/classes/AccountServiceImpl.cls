public with sharing class AccountServiceImpl
{
	public void processAccounts(Set<Id> accountIds)
	{
		try
		{
			Context.setInternalContext(true);

			processAccountsSkipingTriggersValidations();

			Context.setInternalContext(false);
		}
		catch(Exception ex)
		{
			// Error Handling
		}
	}

	private void processAccountsSkipingTriggersValidations()
	{
		throw new UnexpectedException('Unexpected exception in a AccountServiceImpl method.');
	}

	private class UnexpectedException extends Exception {}
}