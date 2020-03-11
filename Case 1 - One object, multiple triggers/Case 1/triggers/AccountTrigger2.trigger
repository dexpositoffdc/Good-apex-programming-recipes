trigger AccountTrigger2 on Account (before insert, after insert, before update, after update)
{
    if (Trigger.isBefore)
	{
		// Before code
		System.debug(LoggingLevel.DEBUG, 'Account Trigger before 2');
	}
	else
	{
		// After code
		System.debug(LoggingLevel.DEBUG, 'Account Trigger after 2');
	}
}