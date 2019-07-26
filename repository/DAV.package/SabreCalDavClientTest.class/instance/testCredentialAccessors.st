tests - authorization
testCredentialAccessors

	self client username: 'Bob'.
	self client password: '12345678'.
	self assert: self client username equals: 'Bob'.
	self assert: self client password equals: '12345678'