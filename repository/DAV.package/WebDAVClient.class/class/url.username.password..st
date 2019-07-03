instance creation
url: anUrlString username: anUsernameString password: anPasswordString

	^ (self new)
		initializeFromUrl: anUrlString;
		username: anUsernameString;
		password: anPasswordString;
		yourself