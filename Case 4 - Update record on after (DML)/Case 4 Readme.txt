CASE 4 - Update records of after - DML
---------------------------------------

- Push the triggers to a development org
- Enable debug logs
- Create a new account with NumberOfEmployees = 0, either in the screen or in developer console:
		insert new Account(Name='Test2', NumberOfEmployees=0);

- The trigger is going to permorm an update DML in the after, so the trigger is going to be call recursivily.
- In this case it will be called only 5 times because we have added a condition, but in other case it could be an infinite loop until to reach any Salesforce limit.