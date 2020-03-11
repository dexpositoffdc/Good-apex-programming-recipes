trigger AccountTrigger on Account (before insert, after insert, before update, after update)
{
	if (Trigger.isBefore)
	{
		// Before code
		System.debug(LoggingLevel.DEBUG, 'Account Trigger before 1');
		System.debug(LoggingLevel.DEBUG, 'Account Trigger before 2');
		System.debug(LoggingLevel.DEBUG, 'Account Trigger before 3');
	}
	else
	{
		// After code
		System.debug(LoggingLevel.DEBUG, 'Account Trigger after 1');
		System.debug(LoggingLevel.DEBUG, 'Account Trigger after 2');
		System.debug(LoggingLevel.DEBUG, 'Account Trigger after 3');
	}
}