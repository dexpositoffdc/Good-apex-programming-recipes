trigger AccountTrigger1 on Account (before insert, after insert, before update, after update)
{
	if (Trigger.isBefore)
	{
		// Before code
		System.debug(LoggingLevel.DEBUG, 'Account Trigger before 1');
	}
	else
	{
		// After code
		System.debug(LoggingLevel.DEBUG, 'Account Trigger after 1');
	}
}