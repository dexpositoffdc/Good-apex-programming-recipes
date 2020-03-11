public with sharing class AccountServiceImpl
{
	public void processAccounts(Set<Id> accountIds)
	{
		try
		{
			Context.setInternalContext(true);
			processAccountsSkipingTriggersValidations();
		}
		catch(Exception ex)
		{
			// Error Handling
		}
		finally
		{
			Context.setInternalContext(false);
		}
	}

	private void processAccountsSkipingTriggersValidations()
	{
		throw new UnexpectedException('Unexpected exception in a AccountServiceImpl method.');
	}

	private class UnexpectedException extends Exception {}
}