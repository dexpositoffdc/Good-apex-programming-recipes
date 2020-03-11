CASE 5 - Sharing clause on Selector Layer
-----------------------------------------

- Push the classes to a development org
- Service1 is in a with sharing context (respect record level security)
- Service2 is in a without sharing context (Doesn't respect record level security)
- Accounts Selector is in a without sharing context, so independently of the caller it is going to return all the accounts.

- The ideal is to have a selector that inherits the sharing mode from the caller. 
- So, the caller determines the sharing mode and the selector can be used from different services with different sharing modes.
	- ServiceClass1 > serviceMethod will fetch ONLY the accounts to which the user has access.
	- ServiceClass2 > serviceMethod will fetch ALL the accounts, regardless of whether the user has access or not.

- NOTE: In order to test this case use non admin users. Because admin users have access to all the reocrds. 

