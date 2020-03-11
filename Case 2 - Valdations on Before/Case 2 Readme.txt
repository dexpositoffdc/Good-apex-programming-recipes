CASE 2 - Validations on Before
---------------------------------------

- Push the 2 triggers to a development org
- Enable debug logs
- Insert a new Account
- You can not predict the order of execution. The order could be (you can check it in the debug logs):
	- Before AccountTrigger -> Validation
	- Before AccountEvilTrigger -> Update field
	- After AccountTrigger
	- After AccountEvilTrigger
- In this case the AccountTrigger is going to validate the NumberOfEmployees on the account but the AccountEvilTrigger is going to modify that field skipping the validation.
- So, you have a security problem. One evil trigger can skip your validations.

- NOTE: Maybe you are lucky and in your org the order is the opposite, remember that Salesforce does not guarantee the order of execution.
		In this case you can either try in a different org or just swap the content of triggers.

