trigger AccountTrigger on Account (before insert, after insert, before update, after update)
{
	if (Trigger.isInsert)
	{
		System.debug(LoggingLevel.DEBUG, 'AccountTrigger: validation: Number of employees cannot be less than 1.');

		if (Trigger.isAfter)
		{
			for (Account newDto : Trigger.new)
			{
				if (newDto.NumberOfEmployees < 1)
					newDto.addError('Number of employees cannot be less than 1.');
			}
		}
	}
}