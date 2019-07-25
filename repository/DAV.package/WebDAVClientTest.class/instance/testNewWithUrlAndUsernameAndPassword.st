tests - instanceCreation
testNewWithUrlAndUsernameAndPassword

	self client: (WebDAVClient url: 'https://www.testUrl.de' username: 'username' password: 'password').
	self assert: 'https' equals: self client scheme.
	self assert: 'www.testUrl.de' equals: self client server.
	self assert: 'username' equals: self client username.
	self assert: 'password' equals: self client password