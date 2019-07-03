tests - instanceCreation
testNewWithUrlAndUsernameAndPassword

	self client: (WebDAVClient url: 'https://www.testUrl.de' username: '' password: '').
	self assert: 'https' equals: self client scheme.
	self assert: 'www.testUrl.de' equals: self client server.
	self assert: '' equals: self client username.
	self assert: '' equals: self client password