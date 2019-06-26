tests - authorization
testAddAuthentificationInformation

	self client username: 'Bob'.
	self client password: '12345678'.
	self client addAuthorizationInformation: self query.
	self assert: 'Basic Qm9iOjEyMzQ1Njc4' equals: (self query headerAt: 'Authorization')