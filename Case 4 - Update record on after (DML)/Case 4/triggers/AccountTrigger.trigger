trigger AccountTrigger on Account (before insert, after insert, before update, after update)
{
	if (Trigger.isAfter)
	{
		System.debug(LoggingLevel.DEBUG, 'Account Trigger !!! ');

		for (Account newDto : Trigger.new)
		{
			if (newDto.NumberOfEmployees < 5)
			{
				Id accountId = newDto.Id;
				Account accountDto = [SELECT NumberOfEmployees FROM Account WHERE Id = :accountId];
				accountDto.NumberOfEmployees = accountDto.NumberOfEmployees + 1;

				update accountDto;
			}
		}
	}
}