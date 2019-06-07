regression tests
testSabreClientAddAuthentificationInformation

	| client request |
	
	client := SabreCalDavClient new.
	client username: 'Bob'.
	client password: '12345678'.
	request := WebRequest new.
	client addAuthorizationInformation: request.
	self assert: 'Basic Qm9iOjEyMzQ1Njc4' equals: (request headerAt: 'Authorization').
	