trigger AccountTrigger on Account (before insert, after insert, before update, after update)
{
	if (Trigger.isAfter)
	{
		for (Account newDto : Trigger.new)
		{
			// Perform Validations
			if ( Context.isInternalContext() == false )
			{
				if (newDto.NumberOfEmployees < 1)
					newDto.addError('Number of employees cannot be less than 1.');

				// more validations ...
			}
		}
	}
}