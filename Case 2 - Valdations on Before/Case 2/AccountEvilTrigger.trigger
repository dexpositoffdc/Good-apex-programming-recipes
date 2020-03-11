trigger AccountEvilTrigger on Account (before insert, after insert)
{
	if (Trigger.isInsert)
	{
		System.debug(LoggingLevel.DEBUG, 'AccountEvilTrigger: Set Number of employees to 0.');

		if (Trigger.isBefore)
		{
			for (Account newDto : Trigger.new)
				newDto.NumberOfEmployees = 0;
		}
	}
}