as yet unclassified
newWithUrl: url username: user password: password 

	| client |
	
	client := self new
		username: user;
		password: password.
		
	self registerClient: client for: url.
	
	^ client