regression tests
testSabreClientAccessors

	| client |
	
	client := SabreCalDavClient new.
	client username: 'Bob'.
	client password: '12345678'.
	self assert: client username equals: 'Bob'.
	self assert: client password equals: '12345678'.