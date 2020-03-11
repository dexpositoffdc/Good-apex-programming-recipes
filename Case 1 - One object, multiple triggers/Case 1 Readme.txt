CASE 1 - One Object - Multiple Triggers
---------------------------------------

- Push the 3 triggers to a development org
- Enable debug logs
- Insert or update an Account
- Review generated logs and you will see 6 messages. In my org the triggers were executed in the following order:
	- Account Trigger before 2
	- Account Trigger before 3
	- Account Trigger before 1
	- Account Trigger after 2
	- Account Trigger after 3
	- Account Trigger after 1
- But Salesforce does not guarantee the order of execution of teh triggers. Any combination could be posible: 1-2-3, 1-3-2, 2-1-3, 2-3-1, 3-1-2, 3-2-1
- So, If you try the same on different orgs then you will get different results.
