trigger AccountTrigger on Account (before insert, after insert, before update, after update)
{
	if (Trigger.isBefore)
	{
		System.debug(LoggingLevel.DEBUG, 'Account Trigger !!! ');

		for (Account newDto : Trigger.new)
		{
			if (newDto.NumberOfEmployees < 5)
			{
				newDto.NumberOfEmployees = newDto.NumberOfEmployees + 1;
			}
		}
	}
}